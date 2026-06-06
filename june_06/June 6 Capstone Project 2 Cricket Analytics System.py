# #1&2
# import csv
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     for row in reader:
#         print(row)
#
# #3 Count Total Players
# count = 0
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         count += 1
# print("Total Players:", count)
#
# #4 Highest Run Scorer
# highest_runs = 0
# top_player = ""
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         runs = int(row[4])
#         if runs > highest_runs:
#             highest_runs = runs
#             top_player = row[1]
# print(top_player, highest_runs)
#
# #5 Lowest Run Scorer
# lowest_runs = float('inf')
# player = ""
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         runs = int(row[4])
#         if runs < lowest_runs:
#             lowest_runs = runs
#             player = row[1]
# print(player, lowest_runs)
#
# #6 Average Runs
# total = 0
# count = 0
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         total += int(row[4])
#         count += 1
# print("Average Runs:", total / count)
#
# #7 More Than 600 Runs
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         if int(row[4]) > 600:
#             print(row[1], row[4])
#
# #8 Less Than 500 Runs
# with open("players.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         if int(row[4]) < 500:
#             print(row[1], row[4])
#
# #9 Count Players by Team
# team_count = {}
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         team = row[2]
#         team_count[team] = team_count.get(team, 0) + 1
# print(team_count)
#
# #10 Calculate Total Runs by Team
# team_runs = {}
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         team = row[2]
#         runs = int(row[4])
#         team_runs[team] = team_runs.get(team, 0) + runs
# print(team_runs)
#
# #11 Team with Highest Runs
# print(max(team_runs, key=team_runs.get))
#
# #12 Team with Lowest Runs
# print(min(team_runs, key=team_runs.get))
#
# #13 Player with Most Fours
# max_fours = 0
# player = ""
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         fours = int(row[5])
#         if fours > max_fours:
#             max_fours = fours
#             player = row[1]
# print("Most Fours:", player, max_fours)
#
# #14 Player with Most Sixes
# max_sixes = 0
# player = ""
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         sixes = int(row[6])
#         if sixes > max_sixes:
#             max_sixes = sixes
#             player = row[1]
# print("Most Sixes:", player, max_sixes)
#
# #15 Total Fours in Tournament
# total_fours = 0
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#
#     for row in reader:
#         total_fours += int(row[5])
#
# print("Total Fours:", total_fours)
#
# #16 Total Sixes in Tournament
# total_sixes = 0
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         total_sixes += int(row[6])
# print("Total Sixes:", total_sixes)
#
# #17 sort alphabetically
# players = []
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         players.append(row[1])
# players.sort()
# print(players)
#
# #18 display unique teams
# teams = set()
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         teams.add(row[2])
# print(teams)
#
# #19 Dictionary
# team_runs = {}
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         team = row[2]
#         runs = int(row[4])
#         team_runs[team] = team_runs.get(team, 0) + runs
# print(team_runs)
#
# #20
# player_runs = {}
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         player_runs[row[1]] = int(row[4])
# print(player_runs)
#
# #21
# def find_top_scorer():
#     highest_runs = 0
#     player = ""
#     with open("players.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             runs = int(row[4])
#             if runs > highest_runs:
#                 highest_runs = runs
#                 player = row[1]
#     return player, highest_runs
# print(find_top_scorer())
#
# #22
# def calculate_average_runs():
#     total = 0
#     count = 0
#     with open("players.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             total += int(row[4])
#             count += 1
#     return total / count
# print(calculate_average_runs())
#
# #23
# def find_best_team():
#     team_runs = {}
#     with open("players.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             team = row[2]
#             runs = int(row[4])
#             team_runs[team] = team_runs.get(team, 0) + runs
#     return max(team_runs, key=team_runs.get)
# print(find_best_team())
#
# #24 find_total_boundaries()
# def find_total_boundaries():
#     total = 0
#     with open("players.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             total += int(row[5]) + int(row[6])
#     return total
# print(find_total_boundaries())
#
# #25 Exception Handling
# try:
#     with open("players.csv", "r") as file:
#         print(file.read())
# except FileNotFoundError:
#     print("CSV File Not Found")
#
# #26
# try:
#     runs = int("abc")
# except ValueError:
#     print("Invalid Run Value")
#
# #27
# try:
#     matches = int("xyz")
# except ValueError:
#     print("Invalid Match Count")
#
# #28
# import numpy as np
# import pandas as pd
# runs_list = []
# with open("players.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         runs_list.append(int(row[4]))
# runs = np.array(runs_list)
# print("Total Runs:", np.sum(runs))
# print("Average Runs:", np.mean(runs))
# print("Maximum Runs:", np.max(runs))
# print("Minimum Runs:", np.min(runs))
# print("Standard Deviation:", np.std(runs))
# print("Median:", np.median(runs))
#
# #29
# df = pd.read_csv("players.csv")
# print(df)
#
# #30 Display Top 5 Run Scorers
# top5 = df.nlargest(5, "runs")
# print(top5)
#
# #31 Sorted by Runs Descending
# sorted_players = df.sort_values(
#     by="runs",
#     ascending=False
# )
# print(sorted_players)
#
# #32 Calculate Total Runs
# print(df.groupby("team")["runs"].sum())
#
# #33 Calculate Average Runs
# print(df.groupby("team")["runs"].mean())
#
# #34 Runs > 600
# print(df[df["runs"] > 600]
# )
#
# #35 Find Top Team
# print(df.groupby("team")["runs"].sum())
#
# #36
# with open("cricket_report.txt", "w") as file:
#
#     file.write("CRICKET ANALYTICS REPORT\n")
#     file.write("========================\n\n")
#
#     file.write(f"Total Players : {len(df)}\n")
#     file.write(f"Total Runs : {df['runs'].sum()}\n")
#     file.write(f"Average Runs : {df['runs'].mean()}\n\n")
#
#     highest = df.loc[df["runs"].idxmax()]
#     lowest = df.loc[df["runs"].idxmin()]
#
#     file.write(f"Highest Scorer : {highest['player_name']} ({highest['runs']})\n")
#     file.write(f"Lowest Scorer : {lowest['player_name']} ({lowest['runs']})\n\n")
#
#     file.write("Team Wise Runs\n")
#     file.write(str(df.groupby("team")["runs"].sum()))
#     file.write("\n\n")
#
#     file.write("Top 5 Players\n")
#     file.write(str(df.nlargest(5, "runs")))
#     file.write("\n\n")
#
#     most_fours = df.loc[df["fours"].idxmax()]
#     most_sixes = df.loc[df["sixes"].idxmax()]
#
#     file.write(f"Most Fours : {most_fours['player_name']}\n")
#     file.write(f"Most Sixes : {most_sixes['player_name']}\n")
#
# print("Report Generated Successfully")
#
# #36
# top_players = df[df["runs"] > 600]
# top_players.to_csv(
#     "top_players.csv",
#     index=False
# )
# print("top_players.csv created")
#
# #37
# team_summary = df.groupby("team").agg({
#     "runs": ["sum", "mean", "count"]
# })
# team_summary.columns = [
#     "Total_Runs",
#     "Average_Runs",
#     "Player_Count"
# ]
# team_summary.to_csv("team_summary.csv")
# print("team_summary.csv created")
#
# #38
# while True:
#     print("\n1. Player Analysis")
#     print("2. Team Analysis")
#     print("3. Boundary Analysis")
#     print("4. Export Reports")
#     print("5. Exit")
#     choice = input("Enter Choice: ")
#     if choice == "1":
#         print(df[["player_name", "runs"]])
#     elif choice == "2":
#         print(df.groupby("team")["runs"].sum())
#     elif choice == "3":
#         print("Total Fours:", df["fours"].sum())
#         print("Total Sixes:", df["sixes"].sum())
#     elif choice == "4":
#         print("Reports Exported Successfully")
#     elif choice == "5":
#         print("Thank You")
#         break
#     else:
#         print("Invalid Choice")
#
#
