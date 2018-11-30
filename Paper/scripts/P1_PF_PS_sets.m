%%% CODeM8 (P1) %%% The last two decision variables are fixed for PF x3 = 2.1, x4 = 2.8, x5 = 3.5

% index of the solutions in the PF that are closer to the chosen direction vectors
index_dir_P1 = [1 105 72 102 7 5 80 98 148 2];

% objective vectors (PF)
f_P1 = [2.1434e-07 4 ; 1.5809 2.4501 ; 1.2171 3.174 ; 1.2392 3.1396 ; 1.1099 3.3275 ; 0.50045 3.8728 ; 0.90381 3.5683 ; 0.775 3.6875 ; 0.75461 3.7044 ; 0.80347 3.663 ; 1.1247 3.3077 ; 1.4545 2.7454 ; 0.88358 3.5885 ; 0.66004 3.7759 ; 0.53323 3.8552 ; 1.0256 3.434 ; 1.4372 2.7817 ; 1.0101 3.4524 ; 0.71362 3.7367 ; 0.63938 3.7901 ; 0.81965 3.6487 ; 0.70075 3.7464 ; 1.5422 2.5469 ; 0.58802 3.8232 ; 1.4901 2.6681 ; 0.61791 3.8043 ; 1.2075 3.1887 ; 0.56751 3.8356 ; 1.4961 2.6547 ; 1.1473 3.2764 ; 0.28338 3.9596 ; 1.5735 2.4692 ; 1.1645 3.2521 ; 0.96188 3.507 ; 0.74401 3.7129 ; 1.0521 3.4019 ; 0.91378 3.5581 ; 0.024226 3.9997 ; 0.34193 3.9411 ; 1.1944 3.2083 ; 0.17448 3.9847 ; 1.4255 2.8057 ; 1.0971 3.3445 ; 1.0647 3.3861 ; 1.2581 3.1095 ; 0.64361 3.7872 ; 0.41096 3.9146 ; 1.3542 2.9436 ; 0.30617 3.9529 ; 1.3205 3.0041 ; 1.313 3.0174 ; 1.5543 2.5173 ; 0.79108 3.6738 ; 1.0325 3.4257 ; 0.48174 3.8822 ; 1.5018 2.6416 ; 1.4192 2.8185 ; 0.83795 3.632 ; 0.26157 3.9656 ; 1.4835 2.6826 ; 1.5369 2.5597 ; 0.21067 3.9777 ; 0.55299 3.8441 ; 1.3479 2.9551 ; 1.4452 2.7651 ; 0.24117 3.9708 ; 0.94991 3.52 ; 1.1325 3.297 ; 1.0696 3.3799 ; 0.15015 3.9887 ; 0.86176 3.6096 ; 0.42693 3.9078 ; 1.3438 2.9626 ; 0.73394 3.7209 ; 0.15871 3.9874 ; 0.49205 3.8771 ; 0.064133 3.9979 ; 1.3973 2.8619 ; 0.36164 3.9341 ; 1.2777 3.0773 ; 0.38092 3.9268 ; 1.3749 2.905 ; 1.4778 2.6954 ; 1.4621 2.7292 ; 0.5439 3.8492 ; 1.36 2.9328 ; 1.2878 3.0605 ; 1.5783 2.4567 ; 0.36268 3.9337 ; 0.09042 3.9959 ; 0.68562 3.7576 ; 1.5677 2.4838 ; 0.93476 3.5362 ; 0.73394 3.7209 ; 1.2676 3.094 ; 1.2773 3.078 ; 0.40241 3.9182 ; 1.4068 2.8432 ; 0.4709 3.8875 ; 0.11624 3.9932 ; 0.84909 3.6216 ; 0.67394 3.7661 ; 0.25213 3.9681 ; 1.2985 3.0423 ; 0.19563 3.9808 ; 1.2581 3.1095 ; 1.2676 3.094 ; 1.0805 3.366 ; 0.13331 3.9911 ; 0.85123 3.6196 ; 1.4415 2.7729 ; 1.2103 3.1844 ; 0.006465 4 ; 1.3378 2.9733 ; 1.4134 2.83 ; 1.2445 3.1312 ; 1.5201 2.5995 ; 0.61511 3.8061 ; 0.10507 3.9945 ; 1.1529 3.2686 ; 1.1861 3.2207 ; 0.70952 3.7398 ; 0.82569 3.6432 ; 1.0049 3.4584 ; 1.1724 3.2406 ; 1.0805 3.366 ; 0.43097 3.906 ; 1.5266 2.5841 ; 0.59296 3.8202 ; 1.5196 2.6007 ; 1.3796 2.8959 ; 0.97788 3.4893 ; 0.22848 3.9738 ; 0.042213 3.9991 ; 1.3281 2.9907 ; 0.97097 3.497 ; 1.5332 2.5684 ; 0.99965 3.4645 ; 0.67497 3.7653 ; 1.04 3.4167 ; 1.5308 2.5742 ; 1.4721 2.7078 ; 0.33185 3.9446 ; 1.508 2.6275 ; 1.3337 2.9807 ; 1.5505 2.5266 ; 0.96799 3.5003 ; 1.5056 2.6329 ; 0.12827 3.9918 ; 1.1369 3.2909 ; ];

% decision vectors (PS)
x_P1 =  [0.7 1.4 ; 3.2635e-16 6.7406e-16 ; 0.24821 0.1316 ; 0.26611 0.0022302 ; 0.041941 1.7478 ; 0.25025 1.3181 ; 0.69423 0.070717 ; 0.2098 1.349 ; 0.14762 1.6131 ; 0.22192 1.5038 ; 0.0036914 1.2856 ; 0.092774 0.1522 ; 0.18132 1.3661 ; 0.2201 1.4444 ; 0.25025 1.3107 ; 0.1557 0.59208 ; 0.072715 0.22592 ; 0.021712 1.4542 ; 0.22192 1.4585 ; 0.74386 0.61509 ; 0.066029 1.4079 ; 0.27336 1.2819 ; 0.020826 0.075094 ; 0.20151 1.3984 ; 0.065342 0.1252 ; 0.19676 1.4157 ; 0.36134 0.16807 ; 0.2098 1.3984 ; 0.033376 0.1695 ; 0.021442 1.7345 ; 0.70009 1.4937 ; 9.6805e-05 0.023101 ; 0.27653 0.1316 ; 0.037219 1.3392 ; 0.12103 1.3988 ; 0.11804 1.7209 ; 0.22121 0.5516 ; 0.7 1.4169 ; 0.65283 1.1968 ; 0.001182 1.1688 ; 0.61655 1.2255 ; 9.6805e-05 0.33442 ; 0.74202 0.04071 ; 0.87513 0.1634 ; 0.22357 0.15449 ; 0.59492 0.60315 ; 0.8134 1.7024 ; 0.20743 0.0069993 ; 0.66027 1.1388 ; 0.22403 0.0089513 ; 0.2223 0.036957 ; 0.029128 0.02314 ; 0.66438 0.24503 ; 0.64874 0.032102 ; 0.60029 1.5029 ; 0.029128 0.1634 ; 0.0083773 0.33482 ; 0.078338 1.4231 ; 0.66243 1.3736 ; 0.078338 0.11418 ; 0.02177 0.087973 ; 0.71869 1.8288 ; 0.24248 1.3107 ; 0.16321 0.19683 ; 0.14416 0.033699 ; 0.66243 1.3758 ; 0.67038 0.12362 ; 0.32476 0.16369 ; 0.06785 1.7552 ; 0.6918 1.4208 ; 0.67038 0.26229 ; 0.30577 1.3138 ; 0.21381 0.0017601 ; 0.29596 0.60897 ; 0.61777 1.3138 ; 0.76879 1.5029 ; 0.71301 1.4116 ; 0.010156 0.36098 ; 0.67122 1.3758 ; 0.23031 0.081693 ; 0.63575 1.4299 ; 0.03297 0.36663 ; 0.060631 0.1634 ; 0.1398 0.0018163 ; 0.75242 1.3557 ; 0.1958 0.048018 ; 0.22545 0.08191 ; 0.0037159 0.00069502 ; 0.71658 1.5029 ; 0.6671 1.3988 ; 0.2203 1.5533 ; 0.0036914 0.033699 ; 0.66816 0.084143 ; 0.29596 0.60897 ; 0.24521 0.032102 ; 0.23031 0.0826 ; 0.72625 1.3517 ; 0.13005 0.1695 ; 0.61777 0.61392 ; 0.7002 1.8273 ; 0.089631 1.582 ; 0.29683 1.7478 ; 0.65746 1.3758 ; 0.23512 0.0069993 ; 0.65283 1.2264 ; 0.22357 0.15449 ; 0.24521 0.032102 ; 0.06785 1.6915 ; 0.66816 1.418 ; 0.6979 0.079625 ; 0.14762 0.031703 ; 0.24521 0.15774 ; 0.70009 1.3968 ; 0.21715 3.9938e-05 ; 0.13262 0.14835 ; 0.23155 0.14768 ; 0.00050657 0.16707 ; 0.67038 0.48999 ; 0.81299 1.4157 ; 0.051631 0.61138 ; 0.0095332 1.1624 ; 0.63503 0.67531 ; 0.2751 0.51712 ; 0.10258 1.3552 ; 0.26242 0.1634 ; 0.06785 1.6915 ; 0.69439 0.60897 ; 0.045075 0.070438 ; 0.22532 1.3315 ; 0.067744 0.041085 ; 0.15675 0.15205 ; 0.64783 0.16898 ; 0.65283 1.2382 ; 0.66243 1.4032 ; 0.20164 0.098848 ; 0.18292 0.60989 ; 0.062517 0.013097 ; 0.72625 0.05192 ; 0.24173 1.3758 ; 0.078338 1.3661 ; 0.030768 0.087436 ; 0.07688 0.14506 ; 0.71043 1.2835 ; 0.059551 0.09114 ; 0.19868 0.098848 ; 0.033376 0.025727 ; 0.6918 0.031703 ; 3.3626e-16 0.19994 ; 0.65283 1.4124 ; 0.28458 0.1634 ; ];
