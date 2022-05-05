import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:face_rec/application/auth/auth_bloc/auth_bloc.dart';
import 'package:face_rec/application/register_students/register_students_cubit/register_students_cubit.dart';
import 'package:face_rec/injection.dart';
import 'package:face_rec/presentation/core/widgets/widgets.dart';
import 'package:face_rec/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RegisterStudentPage extends StatelessWidget {
  const RegisterStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterStudentsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Responsive(
              mobile: RegisterStudentView(),
              tablet: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.black,
                      )),
                  Expanded(flex: 2, child: RegisterStudentView()),
                ],
              ),
              desktop: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.amber,
                      )),
                  Expanded(flex: 2, child: RegisterStudentView()),
                ],
              )),
        ),
      ),
    );
  }
}

class RegisterStudentView extends HookWidget {
  RegisterStudentView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final image64 = useState<String?>(null);
    final _imageFile = useState<XFile?>(null);

    TextFormField buildFullname(BuildContext context) {
      return TextFormField(
        decoration: const InputDecoration(
          labelText: 'Full name',
          border: UnderlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a name";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        onChanged: (value) =>
            context.read<RegisterStudentsCubit>().fullnameChanged(value),
      );
    }

    TextFormField buildMatricnumber(BuildContext context) {
      return TextFormField(
        decoration: const InputDecoration(
          labelText: 'Matric Number',
          border: UnderlineInputBorder(),
        ),
        inputFormatters: [
          SlashTextinputFormatter(
            sample: 'xx/xxxxx/xxx',
            seperator: '/',
          ),
        ],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter Matric Number";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        onChanged: (value) =>
            context.read<RegisterStudentsCubit>().matricNumberChanged(value),
      );
    }

    Future<void> pickImage(ImageSource source, BuildContext context) async {
      try {
        final ImagePicker _picker = ImagePicker();
        final XFile? image = await _picker.pickImage(source: source);
        if (image == null) return;
        final imageTemporary = XFile(image.path);
        final bytes = await XFile(image.path).readAsBytes();
        image64.value = base64Encode(bytes);
        _imageFile.value = imageTemporary;
        context.read<RegisterStudentsCubit>().pictureChanged(image64.value!);
        //return image64;
      } on PlatformException catch (e) {
        log('-----Failed to pick image at: $e ----');
      }
    }

    ElevatedButton buildSubmit(BuildContext context) {
      return ElevatedButton(
        onPressed: () {
          final isValid = _formKey.currentState!.validate();

          FocusScope.of(context).unfocus();
          if (isValid) {
            _formKey.currentState!.save();
            context.read<RegisterStudentsCubit>().submitCredential();
          }
        },
        child: const Text('Register'),
      );
    }

    return SingleChildScrollView(
      child: BlocConsumer<RegisterStudentsCubit, RegisterStudentsState>(
        listener: (context, state) => state.studentFailureOrSuccess.fold(
          () => null,
          (successOrFailure) => successOrFailure.fold(
              (failure) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(failure.map(
                    unexpected: (_) => 'error occured',
                    insufficientPermission: (_) => 'unauthorized request',
                    unableToUpdate: (_) => 'unable to update',
                  )))),
              (r) => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Student Registered successfully')))),
        ),
        builder: (context, state) {
          final success = state.studentFailureOrSuccess.fold(() => null,
              (successFailure) => successFailure.fold((l) => null, (r) => r));
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 14,
                    width: 350,
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 16,
                          right: 16,
                        ),
                        children: [
                          Align(
                            child: Text(
                              'Register Students',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Stack(
                            children: [
                              Align(
                                child: _imageFile.value != null
                                    ? kIsWeb
                                        ? Image.network(
                                            _imageFile.value!.path,
                                            width: 200,
                                            height: 200,
                                          )
                                        : Image.file(
                                            File(_imageFile.value!.path),
                                            width: 200,
                                            height: 200,
                                          )
                                    : Container(
                                        height: 200,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                      ),
                              ),
                              Positioned(
                                right: 85,
                                top: 140,
                                child: ElevatedButton.icon(
                                  onPressed: () =>
                                      pickImage(ImageSource.gallery, context),
                                  icon: const Icon(Icons.camera),
                                  label: Text('add picture'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          buildFullname(context),
                          const SizedBox(height: 16),
                          buildMatricnumber(context),
                          const SizedBox(height: 16),
                          DropDownMenu(
                            name: 'select colledge',
                            items: state.colledgeItems,
                            value: state.college,
                            context: context,
                            onChanged: (value) => context
                                .read<RegisterStudentsCubit>()
                                .collegeChanged(value!),
                          ),
                          const SizedBox(height: 16),
                          DropDownMenu(
                            name: 'select department',
                            items: state.departmentList(),
                            value: state.department,
                            context: context,
                            onChanged: (value) => context
                                .read<RegisterStudentsCubit>()
                                .departmentChanged(value!),
                          ),
                          const SizedBox(height: 16),
                          DropDownMenu(
                            name: 'select level',
                            items: state.levelsItems,
                            value: state.level,
                            context: context,
                            onChanged: (value) => context
                                .read<RegisterStudentsCubit>()
                                .levelChanged(value!),
                          ),
                          const SizedBox(height: 16),
                          buildSubmit(context)
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
