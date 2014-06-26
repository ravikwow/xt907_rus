.class public Lcom/android/datetimepicker/time/TimePickerDialog;
.super Landroid/app/DialogFragment;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/android/datetimepicker/time/TimePickerDialog$Node;,
        Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/time/TimePickerDialog;IZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/datetimepicker/time/TimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/datetimepicker/time/TimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/datetimepicker/time/TimePickerDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/datetimepicker/time/TimePickerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/datetimepicker/time/TimePickerDialog;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    :cond_1
    :goto_0
    return v1

    .line 580
    :cond_2
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 582
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 586
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 587
    .local v0, "val":I
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 589
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 590
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 591
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    :cond_4
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move v1, v2

    .line 597
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 634
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 637
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 645
    iput-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 646
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 647
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 648
    .local v0, "values":[I
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setTime(II)V

    .line 649
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 654
    .end local v0    # "values":[I
    :cond_1
    if-eqz p1, :cond_2

    .line 655
    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 656
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 658
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    .line 811
    const/4 v6, 0x7

    .line 812
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 813
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 814
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 815
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 816
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 817
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 818
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 819
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 820
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 823
    .local v15, "k9":I
    new-instance v20, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 826
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 827
    .local v16, "minuteFirstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    new-instance v17, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 829
    .local v17, "minuteSecondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v16 .. v17}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 832
    new-instance v4, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 833
    .local v4, "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 836
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 837
    .local v18, "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 839
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 842
    new-instance v19, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 844
    .local v19, "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 847
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 848
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 850
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 853
    new-instance v4, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 854
    .restart local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 857
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 858
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 860
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 863
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v10, v20, v21

    const/16 v21, 0x1

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 864
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 866
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 869
    new-instance v4, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    const/16 v21, 0x3

    aput v12, v20, v21

    const/16 v21, 0x4

    aput v13, v20, v21

    const/16 v21, 0x5

    aput v14, v20, v21

    const/16 v21, 0x6

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 870
    .restart local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 872
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 935
    .end local v16    # "minuteFirstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    .end local v17    # "minuteSecondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    :goto_0
    return-void

    .line 876
    .end local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    .end local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    :cond_0
    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 879
    .local v3, "ampm":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    new-instance v4, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 880
    .restart local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 882
    invoke-virtual {v4, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 885
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 886
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 888
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 891
    new-instance v19, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 892
    .restart local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 894
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 898
    new-instance v5, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 899
    .local v5, "fourthDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 901
    invoke-virtual {v5, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 904
    new-instance v19, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 905
    .restart local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 907
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 910
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 911
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 914
    new-instance v19, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 915
    .restart local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 917
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 920
    new-instance v4, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    const/16 v21, 0x2

    aput v10, v20, v21

    const/16 v21, 0x3

    aput v11, v20, v21

    const/16 v21, 0x4

    aput v12, v20, v21

    const/16 v21, 0x5

    aput v13, v20, v21

    const/16 v21, 0x6

    aput v14, v20, v21

    const/16 v21, 0x7

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 921
    .restart local v4    # "firstDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 923
    invoke-virtual {v4, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 926
    new-instance v18, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 927
    .restart local v18    # "secondDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 930
    new-instance v19, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 931
    .restart local v19    # "thirdDigit":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 933
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 776
    iget v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 778
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 781
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 782
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 783
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 784
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_4

    .line 785
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 787
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 788
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 789
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    .line 797
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 798
    iget v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 803
    :cond_2
    :goto_2
    return v5

    .line 791
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_3
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_5
    if-ne p1, v9, :cond_2

    .line 800
    iget v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 12
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 735
    const/4 v0, -0x1

    .line 736
    .local v0, "amOrPm":I
    const/4 v6, 0x1

    .line 737
    .local v6, "startIndex":I
    iget-boolean v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 738
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 739
    .local v3, "keyCode":I
    invoke-direct {p0, v11}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_3

    .line 740
    const/4 v0, 0x0

    .line 744
    :cond_0
    :goto_0
    const/4 v6, 0x2

    .line 746
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 747
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 748
    .local v1, "hour":I
    move v2, v6

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v2, v8, :cond_7

    .line 749
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v7

    .line 750
    .local v7, "val":I
    if-ne v2, v6, :cond_4

    .line 751
    move v4, v7

    .line 748
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 741
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v7    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v10}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 742
    const/4 v0, 0x1

    goto :goto_0

    .line 752
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v7    # "val":I
    :cond_4
    add-int/lit8 v8, v6, 0x1

    if-ne v2, v8, :cond_5

    .line 753
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v4, v8

    .line 754
    if-eqz p1, :cond_2

    if-nez v7, :cond_2

    .line 755
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v10

    goto :goto_2

    .line 757
    :cond_5
    add-int/lit8 v8, v6, 0x2

    if-ne v2, v8, :cond_6

    .line 758
    move v1, v7

    goto :goto_2

    .line 759
    :cond_6
    add-int/lit8 v8, v6, 0x3

    if-ne v2, v8, :cond_2

    .line 760
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v1, v8

    .line 761
    if-eqz p1, :cond_2

    if-nez v7, :cond_2

    .line 762
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v11

    goto :goto_2

    .line 767
    .end local v7    # "val":I
    :cond_7
    const/4 v8, 0x3

    new-array v5, v8, [I

    aput v1, v5, v11

    aput v4, v5, v10

    const/4 v8, 0x2

    aput v0, v5, v8

    .line 768
    .local v5, "ret":[I
    return-object v5
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 700
    packed-switch p1, :pswitch_data_0

    .line 722
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 702
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 708
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 710
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 712
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 714
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 716
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 718
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 720
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 619
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_1

    .line 622
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 623
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 627
    .end local v0    # "values":[I
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_0
    move v1, v2

    .line 623
    goto :goto_0

    .line 627
    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 606
    .local v2, "node":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 607
    .local v1, "keyCode":I
    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-result-object v2

    .line 608
    if-nez v2, :cond_0

    .line 609
    const/4 v3, 0x0

    .line 612
    .end local v1    # "keyCode":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;
    .locals 1
    .param p0, "callback"    # Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 139
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;-><init>()V

    .line 140
    .local v0, "ret":Lcom/android/datetimepicker/time/TimePickerDialog;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/time/TimePickerDialog;->initialize(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 141
    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 490
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 491
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 553
    :cond_1
    :goto_0
    return v2

    .line 493
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 494
    iget-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 495
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 500
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_6

    .line 501
    iget-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 502
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 507
    :cond_4
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_5

    .line 508
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    .line 511
    :cond_5
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 513
    :cond_6
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    .line 514
    iget-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 515
    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 516
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 518
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 519
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 525
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 527
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 553
    goto :goto_0

    .line 520
    .restart local v0    # "deleted":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 521
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 523
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_9
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 530
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/16 v4, 0x8

    if-eq p1, v4, :cond_b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_b

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    const/16 v4, 0xb

    if-eq p1, v4, :cond_b

    const/16 v4, 0xc

    if-eq p1, v4, :cond_b

    const/16 v4, 0xd

    if-eq p1, v4, :cond_b

    const/16 v4, 0xe

    if-eq p1, v4, :cond_b

    const/16 v4, 0xf

    if-eq p1, v4, :cond_b

    const/16 v4, 0x10

    if-eq p1, v4, :cond_b

    iget-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_7

    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 537
    :cond_b
    iget-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_d

    .line 538
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-nez v3, :cond_c

    .line 540
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_c
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 548
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    .line 450
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 453
    if-nez p1, :cond_3

    .line 454
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 455
    .local v1, "hours":I
    iget-boolean v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v6, :cond_0

    .line 456
    rem-int/lit8 v1, v1, 0xc

    .line 458
    :cond_0
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 459
    if-eqz p4, :cond_1

    .line 460
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 472
    .end local v1    # "hours":I
    .local v2, "labelToAnimate":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 473
    .local v0, "hourColor":I
    :goto_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    iget v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 474
    .local v3, "minuteColor":I
    :goto_2
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const v6, 0x3f59999a

    const v7, 0x3f8ccccd

    invoke-static {v2, v6, v7}, Lcom/android/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 478
    .local v5, "pulseAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_2

    .line 479
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 481
    :cond_2
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 482
    return-void

    .line 464
    .end local v0    # "hourColor":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    .end local v3    # "minuteColor":I
    .end local v5    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 465
    .local v4, "minutes":I
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 466
    if-eqz p4, :cond_4

    .line 467
    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 469
    :cond_4
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_0

    .line 472
    .end local v4    # "minutes":I
    :cond_5
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto :goto_1

    .line 473
    .restart local v0    # "hourColor":I
    :cond_6
    iget v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 419
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_2

    .line 420
    const-string v0, "%02d"

    .line 429
    .local v0, "format":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    if-eqz p2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 435
    :cond_1
    return-void

    .line 422
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const-string v0, "%d"

    .line 423
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 424
    if-nez p1, :cond_0

    .line 425
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 438
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 439
    const/4 p1, 0x0

    .line 441
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 567
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 568
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 570
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1, "amOrPm"    # I

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 371
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 12
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 668
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 669
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 670
    .local v1, "hour":I
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 671
    .local v4, "minute":I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 672
    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 673
    iget-boolean v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_0

    .line 674
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 676
    :cond_0
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 677
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 697
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .line 674
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    .line 680
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v7

    .line 681
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .line 682
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .line 683
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 685
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 687
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    iget-boolean v8, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    .line 694
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 681
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 682
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .line 683
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 685
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method


# virtual methods
.method public initialize(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1
    .param p1, "callback"    # Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 148
    iput p2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 149
    iput p3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 150
    iput-boolean p4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 183
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 184
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 185
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 186
    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 188
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 195
    sget v2, Lcom/android/datetimepicker/R$layout;->time_picker_dialog:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 196
    .local v24, "view":Landroid/view/View;
    new-instance v17, Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;Lcom/android/datetimepicker/time/TimePickerDialog$1;)V

    .line 197
    .local v17, "keyboardListener":Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;
    sget v2, Lcom/android/datetimepicker/R$id;->time_picker_dialog:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 200
    .local v21, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/datetimepicker/R$string;->hour_picker_description:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 201
    sget v2, Lcom/android/datetimepicker/R$string;->select_hours:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 202
    sget v2, Lcom/android/datetimepicker/R$string;->minute_picker_description:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 203
    sget v2, Lcom/android/datetimepicker/R$string;->select_minutes:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/android/datetimepicker/R$color;->red:I

    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 205
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/android/datetimepicker/R$color;->white:I

    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    .line 207
    sget v2, Lcom/android/datetimepicker/R$id;->hours:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    sget v2, Lcom/android/datetimepicker/R$id;->hour_space:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 210
    sget v2, Lcom/android/datetimepicker/R$id;->minutes_space:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 211
    sget v2, Lcom/android/datetimepicker/R$id;->minutes:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    sget v2, Lcom/android/datetimepicker/R$id;->ampm_label:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 215
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "amPmTexts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 217
    const/4 v2, 0x1

    aget-object v2, v8, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 219
    new-instance v2, Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/datetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    .line 221
    sget v2, Lcom/android/datetimepicker/R$id;->time_picker:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual/range {v2 .. v7}, Lcom/android/datetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/android/datetimepicker/HapticFeedbackController;IIZ)V

    .line 227
    const/4 v10, 0x0

    .line 228
    .local v10, "currentItemShowing":I
    if-eqz p3, :cond_0

    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 232
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$1;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$2;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v2, Lcom/android/datetimepicker/R$id;->done_button:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$3;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 269
    sget v2, Lcom/android/datetimepicker/R$id;->ampm_hitspace:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 270
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v20, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    sget v2, Lcom/android/datetimepicker/R$id;->separator:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 277
    .local v22, "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v20    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "separatorView":Landroid/widget/TextView;
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 302
    sget v2, Lcom/android/datetimepicker/R$string;->time_placeholder:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 303
    sget v2, Lcom/android/datetimepicker/R$string;->deleted_key:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    .line 305
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 307
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v2, :cond_6

    .line 308
    const-string v2, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 309
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 316
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setTheme(Landroid/content/Context;Z)V

    .line 318
    sget v2, Lcom/android/datetimepicker/R$color;->white:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 319
    .local v25, "white":I
    sget v2, Lcom/android/datetimepicker/R$color;->circle_background:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 320
    .local v9, "circleBackground":I
    sget v2, Lcom/android/datetimepicker/R$color;->line_background:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 321
    .local v19, "line":I
    sget v2, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 322
    .local v23, "timeDisplay":I
    sget v2, Lcom/android/datetimepicker/R$color;->done_text_color:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 323
    .local v16, "doneTextColor":Landroid/content/res/ColorStateList;
    sget v15, Lcom/android/datetimepicker/R$drawable;->done_background_color:I

    .line 325
    .local v15, "doneBackground":I
    sget v2, Lcom/android/datetimepicker/R$color;->dark_gray:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 326
    .local v13, "darkGray":I
    sget v2, Lcom/android/datetimepicker/R$color;->light_gray:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 327
    .local v18, "lightGray":I
    sget v2, Lcom/android/datetimepicker/R$color;->line_dark:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 328
    .local v14, "darkLine":I
    sget v2, Lcom/android/datetimepicker/R$color;->done_text_color_dark:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 329
    .local v12, "darkDoneTextColor":Landroid/content/res/ColorStateList;
    sget v11, Lcom/android/datetimepicker/R$drawable;->done_background_color_dark:I

    .line 332
    .local v11, "darkDoneBackground":I
    sget v2, Lcom/android/datetimepicker/R$id;->time_display_background:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_7

    move v2, v13

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    sget v2, Lcom/android/datetimepicker/R$id;->time_display:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_8

    .end local v13    # "darkGray":I
    :goto_5
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    sget v2, Lcom/android/datetimepicker/R$id;->separator:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_9

    move/from16 v3, v25

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    sget v2, Lcom/android/datetimepicker/R$id;->ampm_label:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_a

    .end local v25    # "white":I
    :goto_7
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    sget v2, Lcom/android/datetimepicker/R$id;->line:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_b

    .end local v14    # "darkLine":I
    :goto_8
    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_c

    .end local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    :goto_9
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_d

    .end local v18    # "lightGray":I
    :goto_a
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v3, :cond_e

    .end local v11    # "darkDoneBackground":I
    :goto_b
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    return-object v24

    .line 204
    .end local v8    # "amPmTexts":[Ljava/lang/String;
    .end local v9    # "circleBackground":I
    .end local v10    # "currentItemShowing":I
    .end local v15    # "doneBackground":I
    .end local v16    # "doneTextColor":Landroid/content/res/ColorStateList;
    .end local v19    # "line":I
    .end local v23    # "timeDisplay":I
    :cond_2
    sget v2, Lcom/android/datetimepicker/R$color;->blue:I

    goto/16 :goto_0

    .line 205
    :cond_3
    sget v2, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    goto/16 :goto_1

    .line 279
    .restart local v8    # "amPmTexts":[Ljava/lang/String;
    .restart local v10    # "currentItemShowing":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$4;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 280
    :cond_5
    const/4 v2, 0x1

    goto :goto_c

    .line 311
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_3

    .restart local v9    # "circleBackground":I
    .restart local v11    # "darkDoneBackground":I
    .restart local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    .restart local v13    # "darkGray":I
    .restart local v14    # "darkLine":I
    .restart local v15    # "doneBackground":I
    .restart local v16    # "doneTextColor":Landroid/content/res/ColorStateList;
    .restart local v18    # "lightGray":I
    .restart local v19    # "line":I
    .restart local v23    # "timeDisplay":I
    .restart local v25    # "white":I
    :cond_7
    move/from16 v2, v25

    .line 332
    goto/16 :goto_4

    :cond_8
    move/from16 v13, v25

    .line 333
    goto/16 :goto_5

    .end local v13    # "darkGray":I
    :cond_9
    move/from16 v3, v23

    .line 334
    goto/16 :goto_6

    :cond_a
    move/from16 v25, v23

    .line 335
    goto/16 :goto_7

    .end local v25    # "white":I
    :cond_b
    move/from16 v14, v19

    .line 336
    goto :goto_8

    .end local v14    # "darkLine":I
    :cond_c
    move-object/from16 v12, v16

    .line 337
    goto :goto_9

    .end local v12    # "darkDoneTextColor":Landroid/content/res/ColorStateList;
    :cond_d
    move/from16 v18, v9

    .line 338
    goto :goto_a

    .end local v18    # "lightGray":I
    :cond_e
    move v11, v15

    .line 339
    goto :goto_b
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 352
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->stop()V

    .line 353
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 346
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->start()V

    .line 347
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string v0, "minute"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 384
    :cond_0
    const-string v0, "dark_theme"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    :cond_1
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 393
    if-nez p1, :cond_2

    .line 394
    invoke-direct {p0, p2, v5}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 395
    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "announcement":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 397
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 415
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 400
    .restart local v0    # "announcement":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    .line 405
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 406
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 407
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 408
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 409
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 411
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 413
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_1
.end method

.method public setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 168
    return-void
.end method

.method public setThemeDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 160
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 357
    return-void
.end method
