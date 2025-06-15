# Sample macOS Application

A simple macOS application with AWS CodePipeline CI/CD integration.

## Project Structure

- `SampleMacApp/` - Main application code
  - `AppDelegate.swift` - Main application delegate
  - `Info.plist` - Application information
- `buildspec.yml` - AWS CodeBuild configuration
- `appspec.yml` - AWS CodeDeploy configuration
- `scripts/` - Deployment scripts
  - `before_install.sh` - Pre-installation script
  - `after_install.sh` - Post-installation script

## CI/CD Pipeline

This project uses AWS CodePipeline for continuous integration and deployment:

1. Source stage: Code is pulled from a Git repository
2. Build stage: Application is built using AWS CodeBuild
3. Deploy stage: Application is deployed using AWS CodeDeploy

## Local Development

To build and run this application locally:

1. Open `SampleMacApp.xcodeproj` in Xcode
2. Select the SampleMacApp scheme
3. Click Run
