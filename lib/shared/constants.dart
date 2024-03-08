import 'package:mythika/models/onboarding_form_item.dart';

List<OnboardingFormItem> onboardingFormItems = [
  OnboardingFormItem(
      question: 'Tell us your gender', options: ['Male', 'Female', 'Other']),
  OnboardingFormItem(
      question: 'I am here for...', options: ['Myself', 'My Mom', 'A Friend']),
  OnboardingFormItem(question: 'Help me...', options: [
    'Learn about the symptoms',
    "Track how I'm feeling",
    'Prepare for a doctor consultation'
  ]),
];
