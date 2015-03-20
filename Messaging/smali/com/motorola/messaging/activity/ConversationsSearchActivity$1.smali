.class Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;
.super Ljava/lang/Object;
.source "ConversationsSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConversationsSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->access$000(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 102
    .local v0, "query":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$1;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/activity/ConversationsSearchActivity;->executeSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->access$100(Lcom/motorola/messaging/activity/ConversationsSearchActivity;Ljava/lang/String;)V

    .line 106
    .end local v0    # "query":Landroid/text/Editable;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
