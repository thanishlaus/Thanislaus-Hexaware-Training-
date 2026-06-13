import pandas as pd
import numpy as np

# Load cleaned data
df = pd.read_csv("cleaned_progress.csv")

# Average progress
avg_progress = np.mean(
    df["completion_percentage"]
)

print("Average Progress:")
print(round(avg_progress, 2))

# Course-wise completion rate
course_report = (
    df.groupby("course_id")
    ["completion_percentage"]
    .mean()
)

print("\nCourse Completion Report")
print(course_report)

# Save report
course_report.to_csv(
    "course_completion_report.csv"
)

print("\nReport generated successfully")