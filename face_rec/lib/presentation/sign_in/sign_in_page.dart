import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:face_rec/plasma_background.dart';
import 'package:face_rec/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:face_rec/application/auth/sign_in_cubit/sign_in_cubit.dart';
import 'package:face_rec/injection.dart';
import 'package:face_rec/presentation/routes/app_route.gr.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInCubit>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Responsive(
              mobile: SignInView(),
              tablet: Row(
                children: [
                  const Expanded(flex: 3, child: PlasmaBackground()),
                  Expanded(flex: 2, child: SignInView()),
                ],
              ),
              desktop: Row(
                children: [
                  const Expanded(flex: 4, child: PlasmaBackground()),
                  Expanded(flex: 2, child: SignInView()),
                ],
              )),
        ),
      ),
    );
  }
}

class SignInView extends HookWidget {
  SignInView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final obscuretext = useState<bool>(true);
    TextFormField buildEmail(BuildContext context) {
      return TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email Address',
          border: OutlineInputBorder(),
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
        onChanged: (value) => context.read<SignInCubit>().emailChange(value),
      );
    }

    TextFormField buildPassword(BuildContext context) => TextFormField(
          decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(),
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
          obscureText: obscuretext.value ? true : false,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (value) =>
              context.read<SignInCubit>().passwordChange(value),
        );
    ElevatedButton buildSubmit(BuildContext context, SignInState state) {
      return ElevatedButton(
        onPressed: state.isSubmitting
            ? null
            : () {
                final isValid = formKey.currentState!.validate();
                FocusScope.of(context).unfocus();
                if (isValid) {
                  formKey.currentState!.save();
                  context.read<SignInCubit>().loginWithCredentials();
                }
              },
        child: const Text('Submit'),
      );
    }

    TextButton buildRegistrationPage(BuildContext context) {
      return TextButton(
        onPressed: () => context.router.push(const SignUpRoute()),
        child: const Text("Don't have an account click to Register"),
      );
    }

    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
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
              (_) => AutoRouter.of(context).push(const AdminHomeRoute())),
        );
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 350,
                width: Responsive.isMobile(context) ? 350 : null,
                child: Card(
                  child: Form(
                    key: formKey,
                    //autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        Align(
                          child: Text(
                            'Sign in',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        buildEmail(context),
                        const SizedBox(height: 16),
                        buildPassword(context),
                        const SizedBox(height: 16),
                        buildSubmit(context, state),
                        const SizedBox(height: 16),
                        buildRegistrationPage(context),
                      ],
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
