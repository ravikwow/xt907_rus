.class Lcom/motorola/messaging/activity/ConversationListActivity$2;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$2;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$2;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # invokes: Lcom/motorola/messaging/activity/ConversationListActivity;->openThread(J)V
    invoke-static {v0, p4, p5}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$300(Lcom/motorola/messaging/activity/ConversationListActivity;J)V

    .line 140
    return-void
.end method
