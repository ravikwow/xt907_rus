.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field mMobileActivitySub2:Landroid/widget/ImageView;

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileGroupSub2:Landroid/view/ViewGroup;

.field private mMobileStrengthId:[I

.field mMobileSub2:Landroid/widget/ImageView;

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field mMobileTypeSub2:Landroid/widget/ImageView;

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:Landroid/widget/ImageView;

.field mNoSimSlotSub2:Landroid/widget/ImageView;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 51
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 52
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 58
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 78
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 79
    .local v1, "numPhones":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 80
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 81
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 82
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 83
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v3, v2, v0

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v3, v2, v0

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v3, v2, v0

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method private applySubscription(I)V
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_7

    .line 206
    if-nez p1, :cond_5

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    :goto_4
    if-eqz p1, :cond_0

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_a

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 213
    goto :goto_2

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 223
    goto :goto_5

    .line 228
    :cond_7
    if-nez p1, :cond_8

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 101
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 102
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 105
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    .line 111
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 117
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 119
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 125
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 126
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 128
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 130
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 131
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 133
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    .line 134
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 135
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    .line 136
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    .line 137
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 138
    iput-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 140
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 141
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 172
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 174
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 175
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "noSimIcon"    # I
    .param p8, "subscription"    # I

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p8

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p8

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p8

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p8

    .line 163
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput p7, v0, p8

    .line 166
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 167
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 95
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 147
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 148
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 149
    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 151
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 152
    return-void
.end method
