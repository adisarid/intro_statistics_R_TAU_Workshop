![](https://raw.githubusercontent.com/adisarid/intro_statistics_R/bcdb6af4058308ebe999d0a477d6a1bb9030ffa2/misc/tau_engineering_logo.png)

# R Workshop for undergraduates learning statistics

This is the repository for an introductory R workshop, taught in Tel-Aviv university. The workshop is provided by the Engineering faculty in the "Digital Sciences for High Tech" track.

In this repository you will find all the required materials including workshop lecture notes, references, class code, exercises, and more.

## Technical Information

In this course there are 3 workshop hours per week.

Lecturer: Mr. Adi Sarid.

   * Office hours: Please **coordinate in advance** via email.
   * E-mail: adi@sarid-ins.co.il.
   * Twitter: @SaridResearch
   * Mobile Phone: +972-50-8455450 (Please please try to reach out via email first).
   * Personal website: [adisarid.github.io](adisarid.github.io)

The workshop will be given in Hebrew, but all the supporting materials will be provided in English.

Garding: The workshop is ungraded and you do not receive any credit for it. It's purely for your benefit, make use of it.

You will optional data analysis tasks, its up to you to do them and understand them, I will not be grading them. We will however show the results of the task each week.

## Prerequisites

The prerequisites for this course are:

   * You should have (started to learn) an introductory course in statistics. The workshop will be given in parallel to the course.
   
This workshop is mainly designed for undergraduates with prior knowledge in probability, math, and statistics. Doing a BA/BSc with a "Digital Sciences for High-Tech" track. We will not be dealing with thoery in this workshop, our main emphasis is on R.

## Goals

By the end of the workshop, students will be able to grab a dataset, and analyze it via R, including the various elements of data processing: import, tidying, transformations, visualizations, modelling (hypothesis tests, confidence intervals, regression, etc.), and communicating the results via R Markdown reports.

During the workshop we will use the [R](https://www.r-project.org) language for demonstrations and exercises.

We will use publicly available "open data sets" (e.g., from [Kaggle](https://kaggle.com) and [tidytuesday](https://github.com/rfordatascience/tidytuesday)) to demonstrate the various topics we will cover.

## Topics

   * Overview - from design to implementation: how a statistical research is conducted, from the design phases, through data collection and presentation.
   * The basics of R (base R) including: data types, if-else, loops, functions, packages.
   * Working with tidyverse - Visualizations (`ggplot2`)
   * Working with tidyverse - Tidying and transformations (`tidyr`, `dplyr`)
   * Modelling
      * Statistical inference and parameter estimation (e.g., average, standard deviation, percentiles).
      * Hypothesis testing:
         * Confidence intervals, unpaird tests, paird tests. Student's t-test, z test, a-parameteric tests.
         * Goodness of fit (Chi-square, Kolmogorov-Smirnov).
         * The problem with p-value and significance testing in the age of big data. False discovery rate (FDR).
         * Analysis of Variance (One-way and Two-way ANOVA).
         * Linear regression.
         * Correlation.
   * Communicating your results (`rmarkdown`).

## Session layout

Each three hour session will be split to 3 parts:
   * In the first part we will discuss the exercise given in the previous lession (~30 minutes).
   * In the second part I will teach new things: techniques, R functions, and concepts (~75-90 minutes).
   * In the final part we will split the class into smaller groups, in which you will solve an R programming exercise (~30-45 minutes).

## Software Prerequisites

You will need to install [R](https://www.r-project.org) and [RStudio](https://rstudio.com/products/rstudio/download/). RStudio is not mandatory to run R, but it provides a very environment for writing R code. Both software are available for free (for RStudio download the *RStudio Desktop Open Source License* version).

Once you have installed both, open rstudio, and in the console run `install.packages("tidyverse")`, this will make sure you have all the packages you need during this workshop.

## Reading Materials

OpenIntro statistics is an introduction to statistics with R, it doesn't contain everything we will learn, but provides a good intro to some topics. Downloadable for free [here](https://leanpub.com/openintro-statistics/) (click on the "download sample" and the entire book downloads as a pdf file).

   * Diez, D. M., Barr, C. D., & Cetinkaya-Rundel, M. (2012). OpenIntro statistics (pp. 174-175). OpenIntro.

R4DS (R for Data Science) is a highly recommended book for learning R, and specifically *tidyverse* which is a collection of useful packages for data science. The book is mostly "technical", i.e., it does not provide much theoretical details. This book is also available in an online format [here](https://r4ds.had.co.nz/).

   * Wickham, H., & Grolemund, G. (2016). R for data science: import, tidy, transform, visualize, and model data. " O'Reilly Media, Inc.".

Most of the theory statistical theory appears here:

   * Walpole R.E., Myers R. H, Myers S. L., and Ye K.: Probability & Statistics for Engineers & Scientists. Prentice Hall, 9th ed., 2011. Available [online](https://fac.ksu.edu.sa/sites/default/files/probability_and_statistics_for_engineers_and_scientisst.pdf)
   * Runger G. & D. Montgomery: Applied Statistics and Probability for Engineers. Wiley, 7th ed., 2018. An old edition is available [online](http://www.um.edu.ar/math/montgomery.pdf)
   
Additional books:

   * Johnson, N.L. & Leone, F.C.: Statistics and Experimental Design Vol. 1.2, Wiley, 2nd ed., 1997.
   * Draper N. & H. Smith: Applied Regression Analysis, 3rd  ed. Wiley, 1998.
   * Gibbons J.D.: Nonparametic Statistical Inference, Springer, 2011.

## Video Sources

You can find various online videos teaching statistics theory along with R coding examples. One such place is the Statistics of DOOM channel on youtube: [https://www.youtube.com/channel/UCMdihazndR0f9XBoSXWqnYg](https://www.youtube.com/channel/UCMdihazndR0f9XBoSXWqnYg).

Another good channel to learn from is David Robinson's tidytuesday analysis [here](https://www.youtube.com/user/safe4democracy).

## How this Repository is Arranged

This repository is arranged with subfolders as follows:

```
├── labs (class exercises)
├── class_code (code we write during class will appear here)
├── exercises (homework exercises)
├── lectures (lecture notes)
├── misc (miscellaneous)
```
