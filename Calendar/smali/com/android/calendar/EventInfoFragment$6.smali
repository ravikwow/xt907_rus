.class Lcom/android/calendar/EventInfoFragment$6;
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
    .line 876
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$6;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$6;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->emailAttendees()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$4100(Lcom/android/calendar/EventInfoFragment;)V

    .line 880
    return-void
.end method
