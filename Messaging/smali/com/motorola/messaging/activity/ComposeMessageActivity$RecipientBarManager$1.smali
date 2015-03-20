.class Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->initButtonAdapter()V
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
    .line 5740
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapacityExceeded()V
    .locals 2

    .prologue
    .line 5742
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 5743
    return-void
.end method
