echo off

:: Variables for prompt interaction

SET /P prompt=[Enter a prompt:]
SET /P number=[# of images?]
SET /P steps=[# of steps?]

:: Starts a cmd.exe window named "miniconda3" which was previously used to search for a spawned process ID.
:: The cmd.exe instance is then given inputs to change the directory to the Stable Diffusion directory.
:: It then activates the required environment (ldm) with miniconda3. 
:: The last section of the line runs the python script for txt2img in the Stable Diffusion scripts directory.
:: It includes arguments for the prompt, the number of iterations (images generated) and steps. 
:: These read from the variables at the start of this script.
:: I have also added the parameter -1 to the --seed argument which uses a randomized seed. 
:: The outputs are generated in the specific directory after "--outdir"

:: The directories used are defaults for the miniconda3 and Stable Diffusion. 
:: You can edit these as needed if you have installed to different locations.
:: You can also specify a different output directory after "--outdir"

start "miniconda3" %windir%\System32\cmd.exe /K "cd C:\stable-diffusion\stable-diffusion-main && C:\ProgramData\Miniconda3\Scripts\activate.bat "C:\Users\%USERNAME%\.conda\envs\ldm" && python C:\stable-diffusion\stable-diffusion-main\scripts\txt2img.py --prompt "%prompt%" --n_iter "%number%" --steps "%steps%" --outdir C:\stable-diffusion\stable-diffusion-main\outputs --seed -1" 
