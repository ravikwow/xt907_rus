.class Lcom/android/contacts/dialpad/SmartDialerAdapter$5;
.super Landroid/os/HandlerThread;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;->destroyCleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1062
    :cond_1
    return-void
.end method
