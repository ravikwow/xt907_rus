.class Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;
.super Ljava/lang/Object;
.source "ConversationsSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 114
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mTextInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->access$000(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 117
    .local v0, "query":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$2;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/activity/ConversationsSearchActivity;->executeSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->access$100(Lcom/motorola/messaging/activity/ConversationsSearchActivity;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
