# bun-vue-trpc-template

## What is it?

The `bun-vue-trpc-template` is a comprehensive template designed to fully harness the capabilities of [bun-vue-trpc-dev](https://github.com/Fairy-io/bun-vue-trpc-dev) images. For additional details, please refer to the linked repository.

## How to start?

### Prerequisites

-   [Git](https://git-scm.com) should be installed
-   [Bun](https://bun.sh) should be installed

To initiate the process, click the `Use this template button` to create a new repository based on this template.

After generating the repository using the template, proceed to clone the newly created Git repository to your local machine.

```bash
git clone <repository_url>
```

Replace `<repository_url>` with the actual URL of your newly created repository.

After cloning the repository, navigate to the cloned repository folder using the following command:

```bash
cd <cloned_repository_folder>
```

Replace `<cloned_repository_folder>` with the actual folder name of your cloned repository.

Execute the following command to run the setup script, which will handle the necessary steps to configure the project environment:

```bash
bun setup
```

Additionally, it will automatically start the Vue3 server, tRPC server, Storybook server, and backend tests in watch mode. This streamlined script ensures a quick and efficient setup, allowing you to seamlessly work on your project with live updates.

To stop the running processes initiated by the setup script, you can use the keyboard shortcut:

Press `Ctrl + C`.

## How to dev?

To start the development environment, run the following command:

```bash
bun dev
```

This command automatically initiates the Vue3 server, tRPC server, Storybook server, and backend tests in watch mode.

-   The `tRPC` server will be accessible on [localhost:3000](http://localhost:3000)
-   The `vue3` server will be accessible on [localhost:5173](http://localhost:5173)
-   The `Storybook` server will be accessible on [localhost:6006](http://localhost:6006)
-   Backend tests will be displayed in the console.

If you need to stop these processes, use the keyboard shortcut:

Press `Ctrl + C`.

## How to deploy?

The deployment process is streamlined through the provided [Dockerfile](./Dockerfile) is already configured. This configuration encompasses running tests, building the frontend and backend, and bundling everything together for deployment.

Utilize your preferred CI/CD platform and tools to facilitate testing, building, and deploying the Docker image.

If you opt to use [Google Cloud Build](https://cloud.google.com/build) for your deployment, you may want to consider one of the provided `cloudbuild.yaml` files from the list below:

-   [cloudbuild.yaml](./cloudbuild.yaml)
-   [cloudbuild-depot.yaml](./cloudbuild-depot.yaml) (specifically designed for use with [depot.dev](https://depot.dev))
