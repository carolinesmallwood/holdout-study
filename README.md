Skills Utilized: **pandas**, **matplotlib**, and **scipy.stats**.

The main notebook, HoldoutStudy.ipynb contains analysis of the holdout_data.csv dataset. This dataset contains 889k records of user tracking.
Users were split into treatment and control groups where the treatment group viewed an ad.
To evaluate the effect of the treatment (i.e. ad campaign), I calculated Conversion Rate, Revenue per User, and Uplift of both.
I also calculated the Value per Transaction on the treatment data, to evaluate value generated for the publisher/agency.

The other notebook, HoldoutDataQuality.ipynb, contains investigations into duplication in the dataset. I noticed a few varieties of duplication that could inflate the metrics calculated in HoldoutStudy.
I investigated their prevalence and potential impact. The work in this notebook informs the assumptions I make at the top of HoldoutStudy. I strive to calculate the most accurate aggregate metrics.
