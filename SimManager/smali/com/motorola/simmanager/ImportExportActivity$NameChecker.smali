.class Lcom/motorola/simmanager/ImportExportActivity$NameChecker;
.super Landroid/os/AsyncTask;
.source "ImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsActivityDestroyed:Z

.field final synthetic this$0:Lcom/motorola/simmanager/ImportExportActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;)V
    .locals 1

    .prologue
    .line 965
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->mIsActivityDestroyed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;Lcom/motorola/simmanager/ImportExportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p2, "x1"    # Lcom/motorola/simmanager/ImportExportActivity$1;

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->mIsActivityDestroyed:Z

    .line 971
    return-void
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 987
    array-length v0, p1

    if-lez v0, :cond_6

    .line 988
    const/4 v6, 0x0

    .line 990
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$700(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 991
    if-nez v6, :cond_1

    .line 992
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v6, :cond_0

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1019
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 994
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 996
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v6, :cond_0

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 998
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 999
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1702(Lcom/motorola/simmanager/ImportExportActivity;I)I

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxNameLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1700(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1700(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 1002
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v6, :cond_0

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1004
    :cond_3
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1005
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 1006
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$700(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I

    move-result-object v1

    aget v1, v1, v8

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1700(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/simmanager/PBUtils;->isNameExceedLimitation(Landroid/content/ContentResolver;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v6, :cond_0

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1005
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1014
    :cond_5
    if-eqz v6, :cond_6

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1019
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1010
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1011
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 1012
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1014
    if-eqz v6, :cond_0

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1014
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 1015
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 965
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 1023
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1025
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v2, 0x0

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1502(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1028
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1064
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1, v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1802(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 1034
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1035
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const v2, 0x7f07000a

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I
    invoke-static {v4}, Lcom/motorola/simmanager/ImportExportActivity;->access$1700(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070009

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1037
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1038
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1039
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070007

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    new-instance v3, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$1;

    invoke-direct {v3, p0}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$1;-><init>(Lcom/motorola/simmanager/ImportExportActivity$NameChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070008

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    new-instance v3, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;

    invoke-direct {v3, p0}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;-><init>(Lcom/motorola/simmanager/ImportExportActivity$NameChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$2002(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1058
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$2000(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1059
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$2000(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1061
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z
    invoke-static {v1, v5}, Lcom/motorola/simmanager/ImportExportActivity;->access$1902(Lcom/motorola/simmanager/ImportExportActivity;Z)Z

    .line 1062
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v2, 0x4

    # invokes: Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
    invoke-static {v1, v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$300(Lcom/motorola/simmanager/ImportExportActivity;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 965
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 975
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 976
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1502(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 977
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 978
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 979
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 980
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const v2, 0x7f070038

    invoke-static {v2}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 983
    return-void
.end method
