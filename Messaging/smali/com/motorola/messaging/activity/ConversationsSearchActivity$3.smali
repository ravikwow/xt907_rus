.class Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;
.super Ljava/lang/Object;
.source "ConversationsSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationsSearchActivity$3;->this$0:Lcom/motorola/messaging/activity/ConversationsSearchActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationsSearchActivity;->mResultsAdapter:Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->access$200(Lcom/motorola/messaging/activity/ConversationsSearchActivity;)Lcom/motorola/messaging/activity/ConversationsSearchActivity$SearchResultsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/motorola/messaging/activity/ConversationsSearchActivity;->launchResult(Landroid/database/Cursor;IJ)V

    .line 130
    return-void
.end method
