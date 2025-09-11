for lang in lang_list: # from lang_list we created above
  for year in year_list: # from year_list we created above
    df_temp = df_loop[(df_loop['Primary Spoken Language'] == f'{lang}') & (df_loop['Year'] == year)].reset_index(drop=True) # filter by lang and year
    year_lang_sum = 0 # total for year/lang pair.
    for i in range(len(df_temp)):
      num_of_apps = df_temp['Number of Applicants'][i] # this should be an integer
      int_apps = int(num_of_apps) # just to be sure
      year_lang_sum += int_apps
    data = {'Year': year, 'Language': lang, 'Total Yearly Applicants': year_lang_sum}
    new_df_list.append(data)