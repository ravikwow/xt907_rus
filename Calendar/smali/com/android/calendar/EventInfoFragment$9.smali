.class Lcom/android/calendar/EventInfoFragment$9;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V
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
    .line 1031
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$9;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$9;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$9;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mMoreActionButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$4500(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/Button;

    move-result-object v1

    # invokes: Lcom/android/calendar/EventInfoFragment;->onMoreActionClick(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$4600(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 1035
    return-void
.end method
