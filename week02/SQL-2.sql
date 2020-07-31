SELECT to_char(ts::date, 'YYYY-MM') as mth, count(DISTINCT usc.userid) 
FROM raw_data.session_timestamp st 
JOIN raw_data.user_session_channel usc ON st.sessionid = usc.sessionid
GROUP BY mth
ORDER BY mth