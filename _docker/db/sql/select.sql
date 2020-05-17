-- idからテーブル内の情報を検索表示
SELECT * FROM master_table WHERE (
 id = 10001 OR
 id = 10002 OR
 id = 10003 OR
 id = 10004 OR
 id = 10005
);


-- 【複数テーブルからの値参照01】 sep_table_1内のidの値を検索して、sep_table_2内の値とidで一致したsep_table_2のデータを取得する
SELECT
 tbl1.id,
 tbl1.name,
 tbl1.age,
 tbl1.gender,
 tbl2.mail
FROM
 sep_table_1 tbl1
INNER JOIN
 sep_table_2 tbl2
ON
 tbl1.id = tbl2.id 
WHERE (
 tbl1.id = 10001 OR
 tbl1.id = 10002 OR
 tbl1.id = 10003 OR
 tbl1.id = 10004 OR
 tbl1.id = 10005
);


-- 【複数テーブルからの値参照02】 sep_table_1内のidの値を検索して、sep_table_2内の値とidで一致したsep_table_2のデータを取得する
-- ＋ 更に別テーブルの情報も取得
--（合計4テーブルから情報を取得して結果でまとめて表示）
SELECT
 tbl1.id,
 tbl1.name,
 tbl1.age,
 tbl1.gender,
 tbl2.mail,
 tbl3.address,
 tbl4.memo
FROM ((
 sep_table_1 tbl1
INNER JOIN
 sep_table_2 tbl2
ON
 tbl1.id = tbl2.id
)
INNER JOIN
 sep_table_3 tbl3
ON
 tbl1.id = tbl3.id
)
INNER JOIN
 sep_table_4 tbl4
ON
 tbl1.name = tbl4.name
WHERE (
 tbl1.id = 10001 OR
 tbl1.id = 10002 OR
 tbl1.id = 10003 OR
 tbl1.id = 10004 OR
 tbl1.id = 10005
);
