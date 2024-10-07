import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/custom_text_field.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import '../../utils/routes/utils.dart';
import '../../view_model/auth_view_model.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final TextEditingController _nameController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _obscurePassword.dispose();
    _nameFocusNode.dispose();
    _nameController.dispose();
    _confirmPasswordController.dispose();
    _confirmPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "images/logo.png",
                    height: 66,
                    width: 168,
                  ),
                ),
                const VerticalSpeacing(60),
                Text(
                  "Sign up",
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColor.titleColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(8),
                Text(
                  "Please fill your detail to access your account.",
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(30),
                TextFieldCustom(
                  keyboardType: TextInputType.name,
                  focusNode: _nameFocusNode,
                  controller: _nameController,
                  maxLines: 2,
                  text: "User Name",
                  onFieldSubmitted: (value) {
                    Utils.focusNode(context, _nameFocusNode, _emailFocusNode);
                  },
                ),
                TextFieldCustom(
                  keyboardType: TextInputType.emailAddress,
                  focusNode: _emailFocusNode,
                  controller: _emailController,
                  maxLines: 2,
                  text: "Email",
                  onFieldSubmitted: (value) {
                    Utils.focusNode(
                        context, _emailFocusNode, _passwordFocusNode);
                  },
                ),
                ValueListenableBuilder(
                    valueListenable: _obscurePassword,
                    builder: (context, value, child) {
                      return TextFieldCustom(
                        keyboardType: TextInputType.emailAddress,
                        focusNode: _passwordFocusNode,
                        controller: _passwordController,
                        maxLines: 2,
                        text: "Create password",
                        obscureText: true,
                        onFieldSubmitted: (value) {
                          Utils.focusNode(context, _passwordFocusNode,
                              _confirmPasswordFocusNode);
                        },
                      );
                    }),
                TextFieldCustom(
                  focusNode: _confirmPasswordFocusNode,
                  controller: _confirmPasswordController,
                  maxLines: 2,
                  text: "Confirm password",
                  obscureText: true,
                ),
                const VerticalSpeacing(30),
                authViewModel.signupLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : RoundedButton(
                        title: "Sign in",
                        onpress: () {
                          if (_emailController.text.isEmpty) {
                            Utils.flushBarErrorMessage(
                                'please enter your email', context);
                          } else if (_passwordController.text.isEmpty) {
                            Utils.flushBarErrorMessage(
                                'please enter your password', context);
                          } else if (_passwordController.text.length < 6) {
                            Utils.flushBarErrorMessage(
                                'plase enter more than six digits', context);
                          } else if (_nameController.text.isEmpty) {
                            Utils.flushBarErrorMessage(
                                'plase enter your name', context);
                          } else if (_confirmPasswordController.text.length <
                              6) {
                            Utils.flushBarErrorMessage(
                                'plase enter more than six digits', context);
                          } else {
                            Map data = {
                              'username': _nameController.text.toString(),
                              'email': _emailController.text.toString(),
                              'password1': _passwordController.text.toString(),
                              'password2':
                                  _confirmPasswordController.text.toString(),
                            };
                            authViewModel.signUpApi(data, context);
                            print('SuccessFully Register');
                          }
                        }),
                const VerticalSpeacing(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have  an account?",
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RoutesName.login,
                        );
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(
                  30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
