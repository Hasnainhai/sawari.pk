import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/custom_text_field.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';

import '../../utils/routes/utils.dart';
import '../../view_model/auth_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  final FocusNode _passwordFocusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _obscurePassword.dispose();
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
                  "Sign In",
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
                TextFieldCustom(
                  focusNode: _passwordFocusNode,
                  controller: _passwordController,
                  maxLines: 2,
                  text: "password",
                  obscureText: true,
                ),
                const VerticalSpeacing(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffD0D5DD),
                            ),
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Remember me",
                          style: GoogleFonts.getFont(
                            "Urbanist",
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.titleColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(30),
                authViewModel.isloading
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
                          } else {
                            Map data = {
                              'email': _emailController.text.toString(),
                              'password': _passwordController.text.toString(),
                            };

                            authViewModel.loginApi(data, context);
                          }
                        }),
                const VerticalSpeacing(
                  16,
                ),
                Container(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.blackColor.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/google.png",
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Sign in with Google",
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColor.titleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpeacing(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
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
                          RoutesName.signup,
                        );
                      },
                      child: Text(
                        "Sign Up",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
