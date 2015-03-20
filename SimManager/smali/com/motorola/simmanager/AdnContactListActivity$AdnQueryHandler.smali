.class final Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AdnContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/AdnContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdnQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/AdnContactListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    .line 87
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    # getter for: Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/motorola/simmanager/AdnContactListActivity;->access$200(Lcom/motorola/simmanager/AdnContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    :cond_0
    if-eqz p3, :cond_1

    .line 94
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/16 v1, 0x22b

    if-ne p1, v1, :cond_1

    .line 100
    sget-boolean v1, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-static {v1}, Lcom/motorola/simmanager/SIMCommunication;->initialize(Landroid/content/Context;)V

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-virtual {v1}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 104
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    # invokes: Lcom/motorola/simmanager/AdnContactListActivity;->sortSIMContactsByName(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/motorola/simmanager/AdnContactListActivity;->access$300(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, "sorted":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    # getter for: Lcom/motorola/simmanager/AdnContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/motorola/simmanager/AdnContactListActivity;->access$200(Lcom/motorola/simmanager/AdnContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 112
    .end local v0    # "sorted":Landroid/database/Cursor;
    :goto_1
    if-eqz p3, :cond_1

    .line 113
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    iget-object v2, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    const v3, 0x7f070043

    invoke-static {v3}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnQueryHandler;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    const v4, 0x7f070041

    invoke-static {v4}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/simmanager/SimManagerListActivity;->showNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_1
.end method
