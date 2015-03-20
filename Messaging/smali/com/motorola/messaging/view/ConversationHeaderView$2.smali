.class Lcom/motorola/messaging/view/ConversationHeaderView$2;
.super Ljava/lang/Object;
.source "ConversationHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/ConversationHeaderView;->updateBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

.field final synthetic val$ch:Lcom/motorola/messaging/conversation/ConversationHeader;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/ConversationHeaderView;Lcom/motorola/messaging/conversation/ConversationHeader;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/motorola/messaging/view/ConversationHeaderView$2;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    iput-object p2, p0, Lcom/motorola/messaging/view/ConversationHeaderView$2;->val$ch:Lcom/motorola/messaging/conversation/ConversationHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView$2;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/messaging/activity/ContactsGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "contacts"

    iget-object v2, p0, Lcom/motorola/messaging/view/ConversationHeaderView$2;->val$ch:Lcom/motorola/messaging/conversation/ConversationHeader;

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getContacts()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/ContactList;->getAddressesAsArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView$2;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
