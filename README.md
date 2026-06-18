# 考研时间记录

一个用于记录考研学习时间的单页网页工具。

## 功能

- 记录日期、开始时间、结束时间、科目、学习内容和是否计入学习时长
- 自动统计今日学习时长、累计学习时长、有效学习天数
- 按科目汇总学习时间
- 展示最近 8 周和最近 6 个月学习时间
- 支持导出 CSV、备份 JSON、导入 JSON
- 可选配置 Supabase 云同步，实现多设备同步

## 使用

直接打开 `index.html` 即可使用。

如果部署到 GitHub Pages，访问仓库 Pages 地址即可。

## 云同步

如需云同步，在 Supabase SQL Editor 中运行 `supabase_study_time_schema.sql`，然后把 Supabase Project URL、anon key 和同步 ID 填入网页的云同步区域。
