.class Lcom/android/calendar/EventInfoFragment$7;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 892
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->addReminder()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$4200(Lcom/android/calendar/EventInfoFragment;)V

    .line 896
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$7;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$2802(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 897
    return-void
.end method
