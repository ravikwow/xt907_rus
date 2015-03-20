.class Lcom/motorola/simmanager/PhoneContactListActivity$1;
.super Ljava/lang/Object;
.source "PhoneContactListActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/PhoneContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/PhoneContactListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$002(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    const-string v7, "display_name LIKE \'"

    .line 57
    .local v7, "NAME_CONSTRAINT_START":Ljava/lang/String;
    const-string v6, "%\'"

    .line 58
    .local v6, "NAME_CONSTRAINT_END":Ljava/lang/String;
    const-string v3, "(in_visible_group=1)"

    .line 60
    .local v3, "searchSelection":Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$000(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$000(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mFilterText:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$000(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/PhoneContactListActivity$1;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/motorola/simmanager/Utils;->getUnRestrictedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$100()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
