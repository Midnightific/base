---
sidebar_position: 1
---

# Introduction to Base

Welcome to the **Base** modules for game development on Roblox. **Base** is a collection of Roblox modules, including service wrappers and other utilities to streamline your development process.

## Setting Up Your Project

To get started with the **Base** modules, you need to set up your project environment.

### Installing with Wally

Wally is a package manager for Roblox that simplifies dependency management. To install **Base** using Wally, follow these steps:

1. Ensure you have Wally installed. If not, you can install it using Aftman:

   ```bash
   aftman add UpliftGames/wally@0.3.2
   ```

   Please check that the version number is the latest version available ^^^

2. Add **Base** to your `wally.toml` file:

   ```toml
   [dependencies]
   base = "midnightific/base@1.0.4"
   ```

3. Run Wally to install the dependencies:

   ```bash
   wally install
   ```

### Installing from Releases

If you prefer to install **Base** manually, you can download it from the releases page:

1. Go to the [releases page](https://github.com/midnightific/base/releases).
2. Download the latest release.
3. Extract the downloaded files and place them in your Roblox project.

## Running the Project

To run the project, use the following commands:

```bash
rojo build -o "path/to/your/project.rbxlx"
```

This command will build the project and output the `.rbxlx` file to the specified path.

Happy coding! 🚀
