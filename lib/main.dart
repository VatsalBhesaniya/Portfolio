import 'package:flutter/material.dart';
import 'package:portfolio/module/app/portfolio.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const PortfolioApp());
}