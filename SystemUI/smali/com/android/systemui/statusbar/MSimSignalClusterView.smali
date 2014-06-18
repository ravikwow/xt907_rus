.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;


# instance fields
.field private mAirplaneIconId:I

.field mAirplaneView:Landroid/widget/ImageView;

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field private mMobileActivityDescription:[Ljava/lang/String;

.field private mMobileActivityIconId:[I

.field mMobileActivityView:Landroid/widget/ImageView;

.field mMobileActivityView2:Landroid/widget/ImageView;

.field private mMobileRoamingDescription:[Ljava/lang/String;

.field private mMobileRoamingIconId:[I

.field mMobileRoamingView:Landroid/widget/ImageView;

.field mMobileRoamingView2:Landroid/widget/ImageView;

.field private mMobileSimDescription:[Ljava/lang/String;

.field private mMobileSimIconId:[I

.field mMobileSimView:Landroid/widget/ImageView;

.field mMobileSimView2:Landroid/widget/ImageView;

.field private mMobileSlotLabelText:[Ljava/lang/String;

.field private mMobileSlotLabelTextDescription:[Ljava/lang/String;

.field mMobileSlotLabelView:Landroid/widget/TextView;

.field mMobileSlotLabelView2:Landroid/widget/TextView;

.field private mMobileStrengthDescription:[Ljava/lang/String;

.field private mMobileStrengthIconId:[I

.field mMobileStrengthView:Landroid/widget/ImageView;

.field mMobileStrengthView2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:[Ljava/lang/String;

.field private mMobileTypeIconId:[I

.field mMobileTypeView:Landroid/widget/ImageView;

.field mMobileTypeView2:Landroid/widget/ImageView;

.field mMobileViewGroup:Landroid/view/ViewGroup;

.field mMobileViewGroup2:Landroid/view/ViewGroup;

.field private mMobileVisible:[Z

.field mSpacerView:Landroid/view/View;

.field private mWifiActivityIconId:I

.field mWifiActivityView:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiStrengthIconId:I

.field mWifiStrengthView:Landroid/widget/ImageView;

.field mWifiViewGroup:Landroid/view/ViewGroup;

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 57
    iput v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthIconId:I

    .line 58
    iput v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityIconId:I

    .line 77
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 78
    iput v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 131
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 135
    .local v1, "numPhones":I
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    .line 137
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    .line 138
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    .line 139
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    .line 140
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    .line 141
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    .line 142
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelText:[Ljava/lang/String;

    .line 144
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimDescription:[Ljava/lang/String;

    .line 145
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthDescription:[Ljava/lang/String;

    .line 146
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingDescription:[Ljava/lang/String;

    .line 147
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    .line 148
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityDescription:[Ljava/lang/String;

    .line 149
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelTextDescription:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean v4, v2, v0

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aput v4, v2, v0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aput v4, v2, v0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aput v4, v2, v0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aput v4, v2, v0

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aput v4, v2, v0

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelText:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelTextDescription:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private applySubscription(I)V
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthIconId:I

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityIconId:I

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 490
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_f

    .line 496
    if-nez p1, :cond_9

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelTextDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_6

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_7

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_8

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelText:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_11

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 533
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 545
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 554
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelTextDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_a

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_b

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_c

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    :goto_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_e

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelText:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 577
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 583
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 589
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 595
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 601
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 610
    :cond_f
    if-nez p1, :cond_10

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 613
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 622
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 362
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 372
    .local v0, "subscription":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    if-nez v0, :cond_2

    .line 381
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 188
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    .line 189
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    .line 190
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 192
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    .line 193
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    .line 194
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    .line 201
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView2:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacerView:Landroid/view/View;

    .line 210
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    .line 214
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 217
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiViewGroup:Landroid/view/ViewGroup;

    .line 225
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    .line 226
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 228
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup:Landroid/view/ViewGroup;

    .line 229
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    .line 230
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    .line 231
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    .line 232
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    .line 233
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    .line 234
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView:Landroid/widget/TextView;

    .line 236
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileViewGroup2:Landroid/view/ViewGroup;

    .line 237
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    .line 238
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    .line 239
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    .line 240
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    .line 241
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    .line 242
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelView2:Landroid/widget/TextView;

    .line 244
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacerView:Landroid/view/View;

    .line 246
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    .line 250
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 251
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 428
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    .line 435
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    :cond_c
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 440
    .local v1, "numPhones":I
    const/4 v0, 0x0

    .line 441
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_d

    .line 444
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_d
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .param p1, "isAirplaneModeOn"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 347
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 349
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 352
    return-void
.end method

.method public setMobileDataIndicators(ZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "simIcon"    # I
    .param p3, "strengthIcon"    # I
    .param p4, "roamingIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "activityIcon"    # I
    .param p7, "activityIn"    # Z
    .param p8, "activityOut"    # Z
    .param p9, "slotLabel"    # Ljava/lang/String;
    .param p10, "simContentDescription"    # Ljava/lang/String;
    .param p11, "strengthContentDescription"    # Ljava/lang/String;
    .param p12, "roamingContentDescription"    # Ljava/lang/String;
    .param p13, "typeContentDescription"    # Ljava/lang/String;
    .param p14, "activityContentDescription"    # Ljava/lang/String;
    .param p15, "slotLabelContentDescription"    # Ljava/lang/String;
    .param p16, "subscription"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean p1, v1, p16

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimIconId:[I

    aput p2, v1, p16

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthIconId:[I

    aput p3, v1, p16

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingIconId:[I

    aput p4, v1, p16

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeIconId:[I

    aput p5, v1, p16

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityIconId:[I

    aput p6, v1, p16

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelText:[Ljava/lang/String;

    aput-object p9, v1, p16

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSimDescription:[Ljava/lang/String;

    aput-object p10, v1, p16

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthDescription:[Ljava/lang/String;

    aput-object p11, v1, p16

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingDescription:[Ljava/lang/String;

    aput-object p11, v1, p16

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    aput-object p13, v1, p16

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityDescription:[Ljava/lang/String;

    aput-object p14, v1, p16

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSlotLabelTextDescription:[Ljava/lang/String;

    aput-object p15, v1, p16

    .line 336
    move/from16 v0, p16

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 337
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 180
    return-void
.end method

.method public setWifiIndicators(ZIIZZLjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "strengthContentDescription"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 272
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthIconId:I

    .line 274
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityIconId:I

    .line 278
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 280
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 283
    return-void
.end method
