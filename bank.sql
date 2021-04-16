CREATETABLE  V0020_TEMP    AS  

(

 

SELECT

        DISTINCTB.CUSTOMER_IDASCUSTOMER_ID

        ,ZEROIFNULL(A.CNT_ALL)  ASCNT_ALL

        FROM

        (

                SELECTA.CUSTOMER_ID

                FROMACCT_DRV_DP ------change time

                LEFTJOINPARTY_DRV  -----change time

                ONA.CUSTOMER_ID=B.CUSTOMER_ID

       

        WHEREACCT_CLOSE_DATEISNULL

        ANDACCT_STATUS_CODE<>'C'

        ANDSOURCE_SYSTEM_CODE='PB'

        ANDCUSTOMER_CLASS_CODE='I'--individual account

 

        GROUPBY1

        )B

        INNERJOIN(

                SELECTDISTINCTA.CUSTOMER_ID,SUM(CNT) ASCNT_ALL

                    FROM

                        (

 

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201812a

                        LEFTJOINACCT_DRV_DP201812B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE','X8','F3','T1'

                                          ,'LA','PA','PH','FC','P3','SF','FQ','FA','SS','T5','P7','SP','LM','SY','FB','TE','U6','SM','SC','SH','XA','P9','XV','SR','X0','P2','TG','LK'

                                          ,'PU','SZ','SE','FZ','U5','E5','SQ','PP','TJ','TD','U4','U0','EQ','SV','X7','TK','P4','SA','G0','T0','FV','TC','FY','X3','TF','G6','LH')            

                        ANDa.TXN_AMT<0----transaction

                        ANDa.CHANNEL_CODENOTIN ('B','T')  ---batch

                        ANDa.TXN_DATEBETWEEN'2018-12-01'AND'2018-12-31'----duration

                        ANDB.SOURCE_SYSTEM_CODE='PB'

                        GROUPBY1

                       

                        UNIONALL

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201901a

                        LEFTJOINACCT_DRV_DP201901B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE','X8','F3','T1'

                                          ,'LA','PA','PH','FC','P3','SF','FQ','FA','SS','T5','P7','SP','LM','SY','FB','TE','U6','SM','SC','SH','XA','P9','XV','SR','X0','P2','TG','LK'

                                          ,'PU','SZ','SE','FZ','U5','E5','SQ','PP','TJ','TD','U4','U0','EQ','SV','X7','TK','P4','SA','G0','T0','FV','TC','FY','X3','TF','G6','LH')            

                        ANDa.TXN_AMT<0-----transaction

                        ANDa.CHANNEL_CODENOTIN ('B','T')  ---batch

                        ANDa.TXN_DATEBETWEEN'2019-01-01'AND'2019-01-31'----duration

                        ANDB.SOURCE_SYSTEM_CODE='PB'

                        GROUPBY1

 

 

                        UNIONALL

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201902a

                        LEFTJOINACCT_DRV_DP201902B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE','X8','F3','T1'

                                          ,'LA','PA','PH','FC','P3','SF','FQ','FA','SS','T5','P7','SP','LM','SY','FB','TE','U6','SM','SC','SH','XA','P9','XV','SR','X0','P2','TG','LK'

                                          ,'PU','SZ','SE','FZ','U5','E5','SQ','PP','TJ','TD','U4','U0','EQ','SV','X7','TK','P4','SA','G0','T0','FV','TC','FY','X3','TF','G6','LH')            

                        ANDa.TXN_AMT<0----account

                        ANDa.CHANNEL_CODENOTIN ('B','T')  ---batch

                        ANDa.TXN_DATEBETWEEN'2019-02-01'AND'2019-02-28'----duration

                        ANDB.SOURCE_SYSTEM_CODE='PB'

                        GROUPBY1

 

                        UNIONALL

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201903a

                        LEFTJOINACCT_DRV_DP201903B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE','X8','F3','T1'

                                          ,'LA','PA','PH','FC','P3','SF','FQ','FA','SS','T5','P7','SP','LM','SY','FB','TE','U6','SM','SC','SH','XA','P9','XV','SR','X0','P2','TG','LK'

                                          ,'PU','SZ','SE','FZ','U5','E5','SQ','PP','TJ','TD','U4','U0','EQ','SV','X7','TK','P4','SA','G0','T0','FV','TC','FY','X3','TF','G6','LH')            

                        ANDa.TXN_AMT<0-----transaction

                        ANDa.CHANNEL_CODENOTIN ('B','T')  ---batch

                        ANDa.TXN_DATEBETWEEN'2019-03-01'AND'2019-03-31'----durantion

                        ANDB.SOURCE_SYSTEM_CODE='PB'

                        GROUPBY1

                       

                        

                        UNIONALL

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201904a

                        LEFTJOINACCT_DRV_DP201904B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE','X8','F3','T1'

                                          ,'LA','PA','PH','FC','P3','SF','FQ','FA','SS','T5','P7','SP','LM','SY','FB','TE','U6','SM','SC','SH','XA','P9','XV','SR','X0','P2','TG','LK'

                                          ,'PU','SZ','SE','FZ','U5','E5','SQ','PP','TJ','TD','U4','U0','EQ','SV','X7','TK','P4','SA','G0','T0','FV','TC','FY','X3','TF','G6','LH')            

                        ANDa.TXN_AMT<0-----transaction

                        ANDa.CHANNEL_CODENOTIN ('B','T')  ---batch

                        ANDa.TXN_DATEBETWEEN'2019-04-01'AND'2019-04-30'----duration

                        ANDB.SOURCE_SYSTEM_CODE='PB'

                        GROUPBY1

                       

            

                        UNIONALL                               

                        SELECT

                        B.CUSTOMER_ID,COUNT(B.CUSTOMER_ID)CNT

                        FROMEVENT_BKD_FIN_TXN201905a

                        LEFTJOINACCT_DRV_DP201905B

                        ONa.ACCT_NBR=B.ACCT_NBR--account

                        WHERE  a.BATCH_NBRIN ('U1','LJ','ST','EP','GS','E4','PB','SG','S6','RR','SD','G3','G8','SK','PF','SN','XE'

...
