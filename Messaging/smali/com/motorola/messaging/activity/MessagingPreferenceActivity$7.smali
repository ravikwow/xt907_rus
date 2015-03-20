.class Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # getter for: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->mRecycler:Lcom/motorola/messaging/provider/Recycler;
    invoke-static {v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$400(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)Lcom/motorola/messaging/provider/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/messaging/provider/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 723
    iget-object v0, p0, Lcom/motorola/messaging/activity/MessagingPreferenceActivity$7;->this$0:Lcom/motorola/messaging/activity/MessagingPreferenceActivity;

    # invokes: Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->setMsgDisplayLimit()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->access$500(Lcom/motorola/messaging/activity/MessagingPreferenceActivity;)V

    .line 724
    return-void
.end method
