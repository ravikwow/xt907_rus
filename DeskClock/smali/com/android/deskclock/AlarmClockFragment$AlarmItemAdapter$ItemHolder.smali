.class public Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field alarm:Lcom/android/deskclock/provider/Alarm;

.field alarmItem:Landroid/widget/LinearLayout;

.field arrow:Landroid/view/View;

.field clickableLabel:Landroid/widget/TextView;

.field clock:Lcom/android/deskclock/widget/TextTime;

.field collapseExpandArea:Landroid/view/View;

.field dayButtonParents:[Landroid/view/ViewGroup;

.field dayButtons:[Landroid/widget/ToggleButton;

.field daysOfWeek:Landroid/widget/TextView;

.field delete:Landroid/widget/ImageView;

.field expandArea:Landroid/view/View;

.field footerFiller:Landroid/view/View;

.field hairLine:Landroid/view/View;

.field label:Landroid/widget/TextView;

.field onoff:Landroid/widget/Switch;

.field repeat:Landroid/widget/CheckBox;

.field repeatDays:Landroid/widget/LinearLayout;

.field ringtone:Landroid/widget/TextView;

.field summary:Landroid/view/View;

.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field vibrate:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 707
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-array v0, v1, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtonParents:[Landroid/view/ViewGroup;

    .line 722
    new-array v0, v1, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    return-void
.end method
