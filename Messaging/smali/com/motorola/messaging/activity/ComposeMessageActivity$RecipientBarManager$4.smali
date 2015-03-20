.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$4;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V
    .locals 0

    .prologue
    .line 5894
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5897
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->updateTitle()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->access$6100(Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;)V

    .line 5898
    return-void
.end method
