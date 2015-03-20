.class public Lcom/motorola/contacts/util/YPUtil;
.super Ljava/lang/Object;
.source "YPUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getYPPackage(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 87
    const-string v4, "YPLaunch"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 89
    .local v3, "yp":Landroid/content/SharedPreferences;
    const-string v4, "yplaunch"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, "mYPValue":I
    if-ne v2, v5, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.motorola.yellowpages"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 95
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 96
    const-string v4, "YPUtil"

    const-string v5, "YP app is available, updating preference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "yplaunch"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    const/4 v2, 0x1

    .line 110
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 100
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v4, "YPUtil"

    const-string v5, "YP app is NOT available, updating preference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "yplaunch"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "YPUtil"

    const-string v5, "YP not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "yplaunch"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isYPContact(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v6

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/motorola/contacts/util/YPUtil;->getYPPackage(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 75
    .local v0, "entity":Landroid/content/Entity;
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 76
    .local v5, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v1, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 77
    .local v1, "entryValues":Landroid/content/ContentValues;
    const-string v8, "mimetype"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 79
    const-string v8, "vnd.android.cursor.item/vnd.at&t_yp.businessid"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 80
    goto :goto_0
.end method
