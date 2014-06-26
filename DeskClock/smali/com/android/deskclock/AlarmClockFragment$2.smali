.class Lcom/android/deskclock/AlarmClockFragment$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)V

    .line 216
    return-void
.end method
