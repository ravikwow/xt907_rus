.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# instance fields
.field private mAirplaneIconId:I

.field mAirplaneView:Landroid/widget/ImageView;

.field private mConfig_show_both_wifi_and_mobile_network:Z

.field private mContext:Landroid/content/Context;

.field private mIsAirplaneMode:Z

.field private mMobileActivityId:I

.field mMobileActivityView:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileRoamingDescription:Ljava/lang/String;

.field private mMobileRoamingIconId:I

.field mMobileRoamingIconView:Landroid/widget/ImageView;

.field private mMobileSimDescription:Ljava/lang/String;

.field private mMobileSimIconId:I

.field mMobileSimIconView:Landroid/widget/ImageView;

.field private mMobileStrengthId:I

.field mMobileStrengthView:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field mMobileTypeView:Landroid/widget/ImageView;

.field mMobileViewGroup:Landroid/view/ViewGroup;

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSpacerView_LTR:Landroid/view/View;

.field mSpacerView_RTL_1:Landroid/view/View;

.field mSpacerView_RTL_2:Landroid/view/View;

.field private mWifiActivityId:I

.field mWifiActivityView:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiStrengthId:I

.field mWifiStrengthView:Landroid/widget/ImageView;

.field mWifiViewGroup:Landroid/view/ViewGroup;

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconId:I

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 58
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mConfig_show_both_wifi_and_mobile_network:Z

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mConfig_show_both_wifi_and_mobile_network:Z

    .line 122
    return-void
.end method

.method private apply()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_10

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v0, :cond_a

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    if-eqz v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    if-eqz v0, :cond_c

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconId:I

    if-eqz v0, :cond_d

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mConfig_show_both_wifi_and_mobile_network:Z

    if-nez v0, :cond_1

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :cond_1
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_11

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :cond_2
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_5
    :goto_c
    return-void

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 362
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 368
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 374
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 391
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 400
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    move v0, v2

    .line 410
    goto/16 :goto_8

    :cond_f
    move v0, v2

    .line 415
    goto :goto_9

    .line 425
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_a

    .line 434
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 488
    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-nez v0, :cond_15

    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconId:I

    if-nez v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    if-eqz v0, :cond_18

    .line 525
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 540
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 133
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    .line 134
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    .line 137
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    .line 151
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    .line 152
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    .line 154
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 157
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    .line 162
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 164
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    .line 165
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    .line 166
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    .line 167
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    .line 170
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    .line 173
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    .line 178
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_LTR:Landroid/view/View;

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_1:Landroid/view/View;

    .line 180
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacerView_RTL_2:Landroid/view/View;

    .line 182
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    .line 184
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 185
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 302
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 238
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 241
    return-void
.end method

.method public setMobileDataIndicators(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "simIcon"    # I
    .param p3, "strengthIcon"    # I
    .param p4, "roamingIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "activityIcon"    # I
    .param p7, "simDescription"    # Ljava/lang/String;
    .param p8, "contentDescription"    # Ljava/lang/String;
    .param p9, "roamingDescription"    # Ljava/lang/String;
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "mobileDataActivityContentDescription"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 222
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 223
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingIconId:I

    .line 224
    iput p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 225
    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 226
    iput-object p8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 227
    iput-object p10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 228
    iput-object p9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingDescription:Ljava/lang/String;

    .line 229
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimIconId:I

    .line 230
    iput-object p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSimDescription:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 232
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 127
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 195
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 196
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 197
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 200
    return-void
.end method
