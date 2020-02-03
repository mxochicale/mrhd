slides
---


## content

Lecture (2h): Motor circuit and equations, motors and motor types (brushed, brushless, piezoelectric, hydraulic etc), dimensioning, torques etc.. 

Lab (3h): DC vs Stepper connected to Arduino, link with revolute potentiometer and linear potentiometer. Speed control (open loop) and what happens with load. Discussion on inclusion in joints. 

Lab (3h):  Arduino lab (code, connection with sensors + building basic systems with potentiometers and distance sensors). Introduction to Simulink. 

 

Assignment: Motorisation of the joints and operation in open loop. Evaluation of performance for each joint/transmission independently. 






## compilation
Under Ubuntu 18.04x64 open a terminal and type the following command to build the latex 
presentation. Also, you can clean the project or even view the pdf presentatio 
as follows 

```
make
```

```
make disclean
```

```
make view
```

## reduce pdf image size
```
cd slides/figs
sh reduce_pdf_size.sh
```


# references
For further information about the original template, 
go to the [hri-theme-theme](https://github.com/mxochicale/PhD/tree/master/presentations/templates/slemaignan_presentations/hri-beamer-theme).
