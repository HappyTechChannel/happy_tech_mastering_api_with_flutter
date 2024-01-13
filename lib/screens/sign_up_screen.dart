import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_tech_mastering_api_with_flutter/cubit/user_cubit.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/already_have_an_account_widget.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/custom_form_button.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/custom_input_field.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/page_header.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/page_heading.dart';
import 'package:happy_tech_mastering_api_with_flutter/widgets/pick_image_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: SingleChildScrollView(
          child: Form(
            key: context.read<UserCubit>().signUpFormKey,
            child: Column(
              children: [
                const PageHeader(),
                const PageHeading(title: 'Sign-up'),
                //! Image
                const PickImageWidget(),
                const SizedBox(height: 16),
                //! Name
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'Your name',
                  isDense: true,
                  controller: context.read<UserCubit>().signUpName,
                ),
                const SizedBox(height: 16),
                //!Email
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Your email',
                  isDense: true,
                  controller: context.read<UserCubit>().signUpEmail,
                ),
                const SizedBox(height: 16),
                //! Phone Number
                CustomInputField(
                  labelText: 'Phone number',
                  hintText: 'Your phone number ex:01234567890',
                  isDense: true,
                  controller: context.read<UserCubit>().signUpPhoneNumber,
                ),
                const SizedBox(height: 16),
                //! Password
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Your password',
                  isDense: true,
                  obscureText: true,
                  suffixIcon: true,
                  controller: context.read<UserCubit>().signUpPassword,
                ),
                //! Confirm Password
                CustomInputField(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Your password',
                  isDense: true,
                  obscureText: true,
                  suffixIcon: true,
                  controller: context.read<UserCubit>().confirmPassword,
                ),
                const SizedBox(height: 22),
                //!Sign Up Button
                CustomFormButton(
                  innerText: 'Signup',
                  onPressed: () {},
                ),
                const SizedBox(height: 18),
                //! Already have an account widget
                const AlreadyHaveAnAccountWidget(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
