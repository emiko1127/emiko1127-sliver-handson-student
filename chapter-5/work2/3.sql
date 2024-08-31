/*
  # ワーク課題5-2-3
  性別ごとに、最も高かった試験の点数を表示するSQLを以下に書いてください。

  (取得結果イメージ)
  +--------+-----------+
  | gender | max_score |
  +--------+-----------+
  |   男   |     92    |
  +--------+-----------+
  |   女   |     90    |
  +--------+-----------+
*/

SELECT gender, MAX(score) AS max_score 
FROM students JOIN exam_results ON students.id = exam_results.student_id 
GROUP BY gender;