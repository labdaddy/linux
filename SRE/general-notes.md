I went from zero to SRE over the last year, thanks to a great mentor. But if i had to start all over from scratch by myself, i would plan it like this:

Start by reading “The Phoenix Project” and similar recommended literature. It’s a bit more fun and friendly start your way to learn DevOps methodology. When you are comfortable with the why’s, deep dive into courses for the how’s.

A docker image is simply a container for some code and runtimes for running said code. In a project, it is mostly the backend developers that creates the code that resides inside a container, while also specifying the recipe in the Dockerfile for running the code as a docker image. It is then the SRE’s task to deploy the image, and make sure that the containers that need to communicate with each other can, such as a application and a database solution. So for learning docker, i would recommend to setup something basic. Like a simple hello-world application using a Nginx + PHP + MySQL solution of containers. And use these to further learn things.

When you have a itch for doing something practical, create a public github repo and learn to use Terraform to configure a cloud provider. (I recommend Google, since it’s the least overwhelming) Terraform enables you to build an entire cloud infrastructure setup, and remove it quickly. Which enables you to stay inside the free trial quotas. (Unless you forget to tear it down after playing around. ;)) Create a VM and use GCP IAM to set up a service account for allowing remote access directly to the VM, no matter the IP’s and generated names after each deploy.

The next step for learning practical stuff, would be to configure Jenkins to attain CI for your other repo’s. Such as building and deploying a docker image to a VM using Ansible.

Then you could spice it up by adding Kubernetes to the Terraform project and Jenkins pipeline. Where you configure a web application with a database, and focus on learning the basics of managing a kubernetes cluster.

When you are comfortable with Kubernetes, setup and configure helm, deploying the prometheus-operator chart and deploying another personal project using a custom helm chart deployed to a personal docker repository.

Online courses are great to learn theories and the fundamentals, but you need to work with it practically to connect the dots.

And always remember; A decent public github profile does wonders during a interview. Or if a leader/colleague is stalking you to figure if you are the right one for a spot in a project.
