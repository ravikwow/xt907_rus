.class Lcom/android/calendar/EventInfoFragment$14;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->doEdit()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$5200(Lcom/android/calendar/EventInfoFragment;)V

    .line 2118
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3400(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3500(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$14;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
