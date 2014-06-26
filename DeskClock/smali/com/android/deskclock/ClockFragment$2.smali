.class Lcom/android/deskclock/ClockFragment$2;
.super Landroid/database/ContentObserver;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/deskclock/ClockFragment;->access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    return-void
.end method
