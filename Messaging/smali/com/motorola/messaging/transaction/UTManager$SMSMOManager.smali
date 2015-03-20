.class Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMSMOManager"
.end annotation


# instance fields
.field private mErrorCode:I

.field private mResultCode:I

.field private mUTNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "UTnumber"    # I

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 622
    iput p1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mUTNumber:I

    .line 623
    return-void
.end method

.method private setResult()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 627
    iget v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mUTNumber:I

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    :pswitch_0
    return-void

    .line 632
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 633
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 638
    :pswitch_2
    iput v5, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 639
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 644
    :pswitch_3
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 645
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 650
    :pswitch_4
    const-string v0, "SmsResponse"

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->sleep(Ljava/lang/String;J)V

    .line 651
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 652
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 658
    :pswitch_5
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 659
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 665
    :pswitch_6
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 666
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 672
    :pswitch_7
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 673
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 678
    :pswitch_8
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 679
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 686
    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 687
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 692
    :pswitch_a
    iput v5, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 693
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 698
    :pswitch_b
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 699
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 704
    :pswitch_c
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 705
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 711
    :pswitch_d
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 712
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 718
    :pswitch_e
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 719
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 725
    :pswitch_f
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 726
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 732
    :pswitch_10
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 733
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 739
    :pswitch_11
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 740
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 746
    :pswitch_12
    iput v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 747
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 753
    :pswitch_13
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 754
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto :goto_0

    .line 764
    :pswitch_14
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 765
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 774
    :pswitch_15
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 775
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 776
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 777
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 780
    :cond_0
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 781
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 788
    :pswitch_16
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-eq v0, v1, :cond_1

    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 789
    :cond_1
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 790
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 791
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 794
    :cond_2
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 795
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 802
    :pswitch_17
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 803
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 813
    :pswitch_18
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 814
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 823
    :pswitch_19
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 824
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 825
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 826
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 829
    :cond_3
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 830
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 837
    :pswitch_1a
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-eq v0, v1, :cond_4

    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 838
    :cond_4
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 839
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 840
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 843
    :cond_5
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 844
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 851
    :pswitch_1b
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    .line 852
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 853
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 854
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 857
    :cond_6
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 858
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 865
    :pswitch_1c
    # getter for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2300()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 866
    sget v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    iput v0, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 867
    iput v2, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    .line 868
    # operator++ for: Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I
    invoke-static {}, Lcom/motorola/messaging/transaction/UTManager;->access$2308()I

    goto/16 :goto_0

    .line 871
    :cond_7
    iput v4, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    .line 872
    iput v3, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    goto/16 :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public getSMSResultFromIntent(Landroid/content/Intent;)Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 879
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->setResult()V

    .line 880
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;-><init>()V

    .line 881
    .local v0, "result":Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    iget v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mResultCode:I

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    .line 882
    iget v1, p0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;->mErrorCode:I

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    .line 883
    const-string v1, "destinations_set_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->destsSetId:I

    .line 884
    const-string v1, "max_parts"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    .line 885
    const-string v1, "max_destinations"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    .line 886
    const-string v1, "UTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSMSResultFromIntent, resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-object v0
.end method
