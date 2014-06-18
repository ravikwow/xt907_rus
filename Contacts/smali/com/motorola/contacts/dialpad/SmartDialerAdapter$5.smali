.class Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;
.super Landroid/os/HandlerThread;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->destroyCleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1097
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1099
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1104
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1106
    :cond_1
    return-void
.end method
