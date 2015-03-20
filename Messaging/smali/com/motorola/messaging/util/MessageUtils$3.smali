.class final Lcom/motorola/messaging/util/MessageUtils$3;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessageUtils;->initEditorFromSystemSettings(Landroid/app/Activity;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/motorola/messaging/util/MessageUtils$3;->val$editor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1133
    iget-object v8, p0, Lcom/motorola/messaging/util/MessageUtils$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1134
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "auto_replace"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    move v2, v6

    .line 1136
    .local v2, "autoText":Z
    :goto_0
    const-string v8, "auto_caps"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 1137
    .local v0, "autoCaps":Z
    :goto_1
    const-string v8, "auto_punctuate"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    .line 1140
    .local v1, "autoPunctuate":Z
    :goto_2
    if-eqz v0, :cond_3

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1142
    .local v3, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_3
    if-eqz v1, :cond_4

    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v4

    .line 1144
    .local v4, "keyListener":Landroid/text/method/KeyListener;
    :goto_4
    iget-object v6, p0, Lcom/motorola/messaging/util/MessageUtils$3;->val$activity:Landroid/app/Activity;

    new-instance v7, Lcom/motorola/messaging/util/MessageUtils$3$1;

    invoke-direct {v7, p0, v4}, Lcom/motorola/messaging/util/MessageUtils$3$1;-><init>(Lcom/motorola/messaging/util/MessageUtils$3;Landroid/text/method/KeyListener;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1149
    return-void

    .end local v0    # "autoCaps":Z
    .end local v1    # "autoPunctuate":Z
    .end local v2    # "autoText":Z
    .end local v3    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .end local v4    # "keyListener":Landroid/text/method/KeyListener;
    :cond_0
    move v2, v7

    .line 1134
    goto :goto_0

    .restart local v2    # "autoText":Z
    :cond_1
    move v0, v7

    .line 1136
    goto :goto_1

    .restart local v0    # "autoCaps":Z
    :cond_2
    move v1, v7

    .line 1137
    goto :goto_2

    .line 1140
    .restart local v1    # "autoPunctuate":Z
    :cond_3
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_3

    .line 1142
    .restart local v3    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v4

    goto :goto_4
.end method
