.class public Lcom/android/settings/DataUsageSummary$AlertFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 8
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    const v6, 0x7f0b085c

    .line 1887
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1910
    :goto_0
    return-void

    .line 1889
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1892
    .local v4, "res":Landroid/content/res/Resources;
    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1893
    .local v1, "currentTab":Ljava/lang/String;
    const-string v5, "3g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1894
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1903
    .local v3, "message":Ljava/lang/CharSequence;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1904
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "message"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1906
    new-instance v2, Lcom/android/settings/DataUsageSummary$AlertFragment;

    invoke-direct {v2}, Lcom/android/settings/DataUsageSummary$AlertFragment;-><init>()V

    .line 1907
    .local v2, "dialog":Lcom/android/settings/DataUsageSummary$AlertFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings/DataUsageSummary$AlertFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1908
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5}, Lcom/android/settings/DataUsageSummary$AlertFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1909
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "alertLimit"

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/DataUsageSummary$AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1895
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings/DataUsageSummary$AlertFragment;
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_1
    const-string v5, "4g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1896
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1897
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_2
    const-string v5, "mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1898
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1900
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown current tab: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1914
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1916
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1918
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1919
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b085b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1920
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1922
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/DataUsageSummary$AlertFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DataUsageSummary$AlertFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$AlertFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1934
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
