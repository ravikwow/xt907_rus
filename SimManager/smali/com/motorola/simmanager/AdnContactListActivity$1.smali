.class Lcom/motorola/simmanager/AdnContactListActivity$1;
.super Ljava/lang/Object;
.source "AdnContactListActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/AdnContactListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/AdnContactListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/AdnContactListActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/motorola/simmanager/AdnContactListActivity$1;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity$1;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/simmanager/AdnContactListActivity;->access$002(Lcom/motorola/simmanager/AdnContactListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity$1;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/simmanager/AdnContactListActivity;->URI_ADN_CONTENT:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity$1;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    iget-object v1, p0, Lcom/motorola/simmanager/AdnContactListActivity$1;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    # getter for: Lcom/motorola/simmanager/AdnContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/simmanager/AdnContactListActivity;->access$000(Lcom/motorola/simmanager/AdnContactListActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/motorola/simmanager/AdnContactListActivity;->filterAdnContacts(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v6, v1}, Lcom/motorola/simmanager/AdnContactListActivity;->access$100(Lcom/motorola/simmanager/AdnContactListActivity;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
