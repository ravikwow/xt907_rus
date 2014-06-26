.class public Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final DAY_ORDER:[I

.field private final mBackgroundColor:I

.field private final mBackgroundColorExpanded:I

.field private final mCollapseExpandHeight:I

.field private final mColorDim:I

.field private final mColorLit:I

.field private final mContext:Landroid/content/Context;

.field private final mExpanded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mHasVibrator:Z

.field private final mList:Landroid/widget/ListView;

.field private final mLongWeekDayStrings:[Ljava/lang/String;

.field private mPreviousDaysOfWeekMap:Landroid/os/Bundle;

.field private final mRepeatChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRobotoBold:Landroid/graphics/Typeface;

.field private final mRobotoNormal:Landroid/graphics/Typeface;

.field private mScrollAlarmId:J

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSelectedAlarms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortWeekDayStrings:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;[J[J[JLandroid/os/Bundle;Landroid/widget/ListView;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "expandedIds"    # [J
    .param p4, "repeatCheckedIds"    # [J
    .param p5, "selectedAlarms"    # [J
    .param p6, "previousDaysOfWeekMap"    # Landroid/os/Bundle;
    .param p7, "list"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, 0x0

    .line 751
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    .line 752
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 688
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    .line 689
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    .line 690
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    .line 691
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 697
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I

    .line 735
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J

    .line 736
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    .line 753
    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    .line 754
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 755
    iput-object p7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    .line 757
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 758
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    .line 759
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    .line 761
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 762
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I

    .line 763
    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I

    .line 764
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColorExpanded:I

    .line 765
    const v2, 0x7f020004

    iput v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColor:I

    .line 767
    const-string v2, "sans-serif-condensed"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    .line 768
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    .line 770
    if-eqz p3, :cond_0

    .line 771
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-direct {p0, p3, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->buildHashSetFromArray([JLjava/util/HashSet;)V

    .line 773
    :cond_0
    if-eqz p4, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-direct {p0, p4, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->buildHashSetFromArray([JLjava/util/HashSet;)V

    .line 776
    :cond_1
    if-eqz p6, :cond_2

    .line 777
    iput-object p6, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 779
    :cond_2
    if-eqz p5, :cond_3

    .line 780
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-direct {p0, p5, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->buildHashSetFromArray([JLjava/util/HashSet;)V

    .line 783
    :cond_3
    const-string v2, "vibrator"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mHasVibrator:Z

    .line 786
    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mCollapseExpandHeight:I

    .line 787
    return-void

    .line 697
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$1900(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 672
    iput-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;J)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getViewById(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # Z

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # Z

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/provider/Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # Z

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # Lcom/android/deskclock/provider/DaysOfWeek;

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # I

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .param p1, "x1"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "x2"    # I

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .prologue
    .line 672
    iget v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mCollapseExpandHeight:I

    return v0
.end method

.method private bindExpandArea(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V
    .locals 8
    .param p1, "itemHolder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1158
    iget-object v3, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1159
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1165
    :goto_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    iget-wide v4, p2, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v3, v3, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1173
    :cond_0
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1174
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    :goto_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v3, p2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-direct {p0, p1, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V

    .line 1213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 1214
    move v0, v1

    .line 1216
    .local v0, "buttonIndex":I
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;ILcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1162
    .end local v0    # "buttonIndex":I
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1163
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1176
    :cond_2
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1177
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1246
    .restart local v1    # "i":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mHasVibrator:Z

    if-nez v3, :cond_4

    .line 1247
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :goto_3
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    sget-object v3, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    iget-object v4, p2, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1275
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1279
    .local v2, "ringtone":Ljava/lang/String;
    :goto_4
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    new-instance v4, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$14;

    invoke-direct {v4, p0, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$14;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    return-void

    .line 1249
    .end local v2    # "ringtone":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-boolean v3, p2, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    if-nez v3, :cond_5

    .line 1251
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1252
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1254
    :cond_5
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1255
    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 1277
    :cond_6
    iget-object v3, p2, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "ringtone":Ljava/lang/String;
    goto :goto_4
.end method

.method private buildHashSetFromArray([JLjava/util/HashSet;)V
    .locals 6
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1667
    .local p2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 1668
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1670
    .end local v2    # "id":J
    :cond_0
    return-void
.end method

.method private collapseAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 6
    .param p1, "itemHolder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1512
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1515
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1518
    .local v1, "startingHeight":I
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1519
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    if-nez p2, :cond_0

    .line 1523
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setRotation(F)V

    .line 1524
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1612
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1539
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$17;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 5
    .param p1, "itemHolder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "animate"    # Z

    .prologue
    .line 1380
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1381
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0, p1, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V

    .line 1383
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v2, v2, Lcom/android/deskclock/provider/Alarm;->id:J

    iput-wide v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J

    .line 1386
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1389
    .local v1, "startingHeight":I
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColorExpanded:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1390
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    if-nez p2, :cond_0

    .line 1394
    iget-object v2, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    const/high16 v3, 0x43340000

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 1397
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1398
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1505
    :goto_0
    return-void

    .line 1425
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1426
    .restart local v0    # "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$16;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private getRingToneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$4300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    .local v1, "title":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1361
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1362
    .local v0, "ringTone":Landroid/media/Ringtone;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1363
    if-eqz v1, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$4300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    .end local v0    # "ringTone":Landroid/media/Ringtone;
    :cond_0
    return-object v1
.end method

.method private getViewById(J)Landroid/view/View;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1621
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1622
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1623
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    move-object v0, v3

    check-cast v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    .line 1624
    .local v0, "h":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1629
    .end local v0    # "h":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 1620
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1629
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isAlarmExpanded(Lcom/android/deskclock/provider/Alarm;)Z
    .locals 3
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setItemAlpha(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "enabled"    # Z

    .prologue
    .line 1294
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000

    .line 1295
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1296
    iget-object v1, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1297
    iget-object v1, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1298
    iget-object v1, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1299
    iget-object v1, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1300
    return-void

    .line 1294
    .end local v0    # "alpha":F
    :cond_0
    const/high16 v0, 0x3f000000

    goto :goto_0
.end method

.method private setNewHolder(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 977
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)V

    .line 978
    .local v2, "holder":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    const v5, 0x7f0e0016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    .line 979
    const v5, 0x7f0e0017

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/widget/TextTime;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    .line 980
    const v5, 0x7f0e0018

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    .line 981
    iget-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 982
    const v5, 0x7f0e0024

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    .line 983
    const v5, 0x7f0e0015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    .line 984
    const v5, 0x7f0e0019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->delete:Landroid/widget/ImageView;

    .line 985
    const v5, 0x7f0e0023

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    .line 986
    const v5, 0x7f0e001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    .line 987
    const v5, 0x7f0e0022

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    .line 988
    const v5, 0x7f0e0021

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->arrow:Landroid/view/View;

    .line 989
    const v5, 0x7f0e001c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    .line 990
    const v5, 0x7f0e001b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clickableLabel:Landroid/widget/TextView;

    .line 991
    const v5, 0x7f0e001d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    .line 992
    const v5, 0x7f0e0020

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->collapseExpandArea:Landroid/view/View;

    .line 993
    const v5, 0x7f0e0025

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->footerFiller:Landroid/view/View;

    .line 994
    iget-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->footerFiller:Landroid/view/View;

    new-instance v6, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$3;

    invoke-direct {v6, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$3;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v3, v5, :cond_0

    .line 1004
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v6, 0x7f040014

    iget-object v7, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1006
    .local v4, "viewgroup":Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1007
    .local v0, "button":Landroid/widget/ToggleButton;
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I

    aget v1, v5, v3

    .line 1008
    .local v1, "dayToShowIndex":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mLongWeekDayStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1013
    iget-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aput-object v0, v5, v3

    .line 1014
    iget-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    aput-object v4, v5, v3

    .line 1003
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1016
    .end local v0    # "button":Landroid/widget/ToggleButton;
    .end local v1    # "dayToShowIndex":I
    .end local v4    # "viewgroup":Landroid/view/ViewGroup;
    :cond_0
    const v5, 0x7f0e001f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    .line 1017
    const v5, 0x7f0e001e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->ringtone:Landroid/widget/TextView;

    .line 1019
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1020
    return-void
.end method

.method private turnOffDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "dayIndex"    # I

    .prologue
    .line 1338
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1339
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1340
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRobotoNormal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1341
    return-void
.end method

.method private turnOnDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "dayIndex"    # I

    .prologue
    .line 1344
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1345
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1346
    iget-object v0, p1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRobotoBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1347
    return-void
.end method

.method private updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .param p2, "daysOfWeek"    # Lcom/android/deskclock/provider/DaysOfWeek;

    .prologue
    .line 1303
    invoke-virtual {p2}, Lcom/android/deskclock/provider/DaysOfWeek;->getSetDays()Ljava/util/HashSet;

    move-result-object v1

    .line 1304
    .local v1, "setDays":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 1305
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    .line 1304
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1308
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    goto :goto_1

    .line 1311
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1024
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 1025
    .local v0, "alarm":Lcom/android/deskclock/provider/Alarm;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1026
    .local v6, "tag":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setNewHolder(Landroid/view/View;)V

    :cond_0
    move-object v3, v6

    .line 1030
    check-cast v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    .line 1031
    .local v3, "itemHolder":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    iput-object v0, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    .line 1035
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1036
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    iget-boolean v8, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1038
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    iget-object v8, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v8, v8, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1039
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColorExpanded:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1040
    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    .line 1041
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1047
    :goto_0
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/android/deskclock/widget/TextTime;->setFormat(I)V

    .line 1049
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    iget v8, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    iget v9, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v7, v8, v9}, Lcom/android/deskclock/widget/TextTime;->setTime(II)V

    .line 1050
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1051
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;

    invoke-direct {v8, p0, v3, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    new-instance v5, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V

    .line 1076
    .local v5, "onOffListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v7, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1078
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->isAlarmExpanded(Lcom/android/deskclock/provider/Alarm;)Z

    move-result v2

    .line 1079
    .local v2, "expanded":Z
    iget-object v8, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->expandArea:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v8, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->summary:Landroid/view/View;

    if-eqz v2, :cond_3

    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    const-string v4, ""

    .line 1084
    .local v4, "labelSpace":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/deskclock/provider/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "daysOfWeekStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 1087
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    iget-object v9, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/deskclock/provider/DaysOfWeek;->toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    const-string v4, "  "

    .line 1092
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$6;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$6;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    :goto_3
    iget-object v7, v0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1105
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0041

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;

    invoke-direct {v8, p0, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    :goto_4
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->delete:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    if-eqz v2, :cond_6

    .line 1138
    const/4 v7, 0x0

    invoke-direct {p0, v3, v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    .line 1143
    :goto_5
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$9;

    invoke-direct {v8, p0, v0, v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$9;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    return-void

    .line 1043
    .end local v1    # "daysOfWeekStr":Ljava/lang/String;
    .end local v2    # "expanded":Z
    .end local v4    # "labelSpace":Ljava/lang/String;
    .end local v5    # "onOffListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_1
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1044
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mBackgroundColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1045
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->onoff:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-direct {p0, v3, v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    goto/16 :goto_0

    .line 1079
    .restart local v2    # "expanded":Z
    .restart local v5    # "onOffListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_2
    const/16 v7, 0x8

    goto/16 :goto_1

    .line 1080
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1101
    .restart local v1    # "daysOfWeekStr":Ljava/lang/String;
    .restart local v4    # "labelSpace":Ljava/lang/String;
    :cond_4
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->daysOfWeek:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1118
    :cond_5
    iget-object v7, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->label:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1140
    :cond_6
    const/4 v7, 0x0

    invoke-direct {p0, v3, v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->collapseAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    goto :goto_5
.end method

.method public getExpandedArray()[J
    .locals 6

    .prologue
    .line 1633
    const/4 v4, 0x0

    .line 1634
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 1635
    .local v3, "ids":[J
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1636
    .local v1, "id":J
    aput-wide v1, v3, v4

    .line 1637
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1639
    .end local v1    # "id":J
    :cond_0
    return-object v3
.end method

.method public getPreviousDaysOfWeekMap()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRepeatArray()[J
    .locals 6

    .prologue
    .line 1653
    const/4 v4, 0x0

    .line 1654
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 1655
    .local v3, "ids":[J
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1656
    .local v1, "id":J
    aput-wide v1, v3, v4

    .line 1657
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1659
    .end local v1    # "id":J
    :cond_0
    return-object v3
.end method

.method public getSelectedAlarmsArray()[J
    .locals 6

    .prologue
    .line 1643
    const/4 v4, 0x0

    .line 1644
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 1645
    .local v3, "ids":[J
    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mSelectedAlarms:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1646
    .local v1, "id":J
    aput-wide v1, v3, v4

    .line 1647
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1649
    .end local v1    # "id":J
    :cond_0
    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 795
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 799
    const/4 v2, 0x0

    .line 823
    :goto_0
    return-object v2

    .line 802
    :cond_0
    if-nez p2, :cond_2

    .line 803
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 817
    .local v2, "v":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 818
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    .line 822
    .local v1, "holder":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    iget-object v4, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->footerFiller:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 806
    .end local v1    # "holder":Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const v4, 0x7f0e0017

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 809
    .local v0, "badConvertView":Z
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    .line 812
    :cond_3
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_1

    .end local v0    # "badConvertView":Z
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    move v0, v3

    .line 806
    goto :goto_2

    .line 814
    .restart local v0    # "badConvertView":Z
    :cond_5
    move-object v2, p2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1616
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 828
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v2, 0x7f040005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setNewHolder(Landroid/view/View;)V

    .line 830
    return-object v0
.end method

.method public setNewAlarm(J)V
    .locals 2
    .param p1, "alarmId"    # J

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mExpanded:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1372
    return-void
.end method

.method public declared-synchronized swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 842
    .local v0, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$2200(Lcom/android/deskclock/AlarmClockFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$2300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 972
    :goto_0
    monitor-exit p0

    return-object v0

    .line 846
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v1

    .line 847
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 861
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 840
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "list":Landroid/widget/ListView;
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
