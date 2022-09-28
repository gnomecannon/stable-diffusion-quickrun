# stable-diffusion-quickrun
This is a batch script meant to simplify generating images using Stable Diffusion. 

This does *not* install or condigure Stable Diffusion itself, or contain any files provided by Stable Diffusion. I am completely unaffiliated with the Stable Diffusion project. Please only attempt to use this after you have successfully installed and used Stable Diffusion on your local Windows system.

Requirements:
Working installation of Stable Diffusion (tested with version 1.4) https://github.com/CompVis/stable-diffusion
Working installation of miniconda3 (required by Stable Diffusion)


Adds input reads to simply setting prompt parameters.



Starts a cmd.exe window named "miniconda3" which was previously used to search for a spawned process ID.
The cmd.exe instance is then given inputs to change the directory to the Stable Diffusion directory.
It then activates the required environment (ldm) with miniconda3. 
The last section of the line runs the python script for txt2img in the Stable Diffusion scripts directory.
It includes arguments for the prompt, the number of iterations (images generated) and steps. 
These read from the variables at the start of this script.
I have also added the parameter -1 to the --seed argument which uses a randomized seed. 
The outputs are generated in the specific directory after "--outdir"

The directories used are defaults for the miniconda3 and Stable Diffusion. 
You can edit these as needed if you have installed to different locations.
You can also specify a different output directory after "--outdir"



This is provided as-is and no support is guaranteed. Use at your own risk and discretion.
