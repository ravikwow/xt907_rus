.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$10;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->showLabelDialog(Lcom/android/deskclock/provider/Alarm;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$3300(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)V

    .line 1169
    return-void
.end method
