import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:face_rec/application/auth/sign_upcubit/sign_up_cubit.dart';
import 'package:face_rec/injection.dart';
import 'package:face_rec/plasma_background.dart';
import 'package:face_rec/presentation/core/widgets/widgets.dart';
import 'package:face_rec/presentation/routes/app_route.gr.dart';
import 'package:face_rec/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpCubit>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Responsive(
              mobile: SignUpView(),
              tablet: Row(
                children: [
                  const Expanded(flex: 3, child: PlasmaBackground()),
                  Expanded(flex: 2, child: SignUpView()),
                ],
              ),
              desktop: Row(
                children: [
                  const Expanded(flex: 4, child: PlasmaBackground()),
                  Expanded(flex: 2, child: SignUpView()),
                ],
              )),
        ),
      ),
    );
  }
}

class SignUpView extends HookWidget {
  SignUpView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final obscuretext = useState<bool>(true);

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
        onChanged: (value) => context.read<SignUpCubit>().fullNameChange(value),
      );
    }

    TextFormField buildEmail(BuildContext context) {
      return TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email Address',
          border: UnderlineInputBorder(),
        ),
        validator: (value) {
          const pattern =
              r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
          final regExp = RegExp(pattern);
          if (!regExp.hasMatch(value!)) {
            return 'Enter a valid Email';
          } else if (value.isEmpty) {
            return "Enter an email";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) => context.read<SignUpCubit>().emailChange(value),
      );
    }

    TextFormField buildPassword(BuildContext context) => TextFormField(
          decoration: InputDecoration(
              labelText: 'Password',
              border: const UnderlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () => obscuretext.value = !obscuretext.value,
                icon: obscuretext.value
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              )),
          validator: (value) {
            if (value!.length < 7) {
              return 'Password must be at least 7 characters long';
            } else {
              return null;
            }
          },
          obscureText: obscuretext.value,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          onChanged: (value) =>
              context.read<SignUpCubit>().passwordChange(value),
        );

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
            context.read<SignUpCubit>().matricNumberChange(value),
      );
    }

    ElevatedButton buildSubmit(BuildContext context, SignUpState state) {
      return ElevatedButton(
        onPressed: state.isSubmitting
            ? null
            : () {
                final isValid = _formKey.currentState!.validate();

                FocusScope.of(context).unfocus();
                if (isValid) {
                  _formKey.currentState!.save();
                  context.read<SignUpCubit>().registerWithCredentials();
                }
              },
        child: const Text('Register'),
      );
    }

    TextButton buildSigninPage(BuildContext context) {
      return TextButton(
        onPressed: () => AutoRouter.of(context).pop(),
        child: const Text("Already have an account click to Sign in"),
      );
    }

    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              failure.map(
                cancelledByUser: (_) => 'cancelled by you',
                serverError: (_) => 'unknown error',
                emailAlreadyInUse: (_) => 'email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'wrong email or password',
              ),
            ))),
            (_) => AutoRouter.of(context).push(const AdminHomeRoute()),
          );
        });
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: Responsive.isMobile(context) ? 350 : null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Form(
                    key: _formKey,
                    //autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SignUp',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 16),
                              DropDownMenu(
                                name: 'Select access Level',
                                items: state.accountTypeList,
                                value: state.accountType,
                                onChanged: (value) => context
                                    .read<SignUpCubit>()
                                    .accountTypeChange(value!),
                                context: context,
                              ),
                              const SizedBox(height: 16),
                              buildFullname(context),
                              const SizedBox(height: 16),
                              buildEmail(context),
                              const SizedBox(height: 16),
                              buildPassword(context),
                              const SizedBox(height: 16),
                              state.accountType == 'Student'
                                  ? buildMatricnumber(context)
                                  : Container(),
                              state.accountType == 'Student'
                                  ? const SizedBox(height: 16)
                                  : Container(),
                              DropDownMenu(
                                name: 'select colledge',
                                items: state.colledgeItemsList,
                                value: state.college,
                                onChanged: (value) => context
                                    .read<SignUpCubit>()
                                    .collegeChange(value!),
                                context: context,
                              ),
                              const SizedBox(height: 16),
                              DropDownMenu(
                                name: 'select department',
                                items: state.departmentItemsList,
                                value: state.department,
                                onChanged: (value) => context
                                    .read<SignUpCubit>()
                                    .departmentChange(value!),
                                context: context,
                              ),
                              state.accountType == 'Student'
                                  ? const SizedBox(height: 16)
                                  : Container(),
                              state.accountType == 'Student'
                                  ? DropDownMenu(
                                      name: 'select level',
                                      items: state.levelsItemsList,
                                      value: state.level,
                                      onChanged: (value) => context
                                          .read<SignUpCubit>()
                                          .levelChange(value!),
                                      context: context,
                                    )
                                  : Container(),
                              const SizedBox(height: 16),
                              buildSubmit(context, state),
                              const SizedBox(height: 16),
                              buildSigninPage(context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
