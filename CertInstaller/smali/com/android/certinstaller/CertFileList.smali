.class public Lcom/android/certinstaller/CertFileList;
.super Lcom/android/certinstaller/CertFile;
.source "CertFileList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertFileList$SdCardMonitor;
    }
.end annotation


# instance fields
.field private mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/certinstaller/CertFile;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/android/certinstaller/CertFileList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/certinstaller/CertFileList;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    return-void
.end method

.method private createFileList()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 101
    const-string v10, "CertFileList"

    const-string v11, "finishing, exit createFileList()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFile;->isSdCardPresent()Z

    move-result v10

    if-nez v10, :cond_2

    .line 105
    const v10, 0x7f06001c

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 112
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 113
    .local v6, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 115
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFile;->getAllCertFiles()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 117
    const v10, 0x7f06001b

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "root":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CertFileList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createFileList(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v6    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "sdcard":Ljava/lang/String;
    const-string v10, "SECONDARY_STORAGE"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "sdcard_ext":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "categoryTrigger":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 127
    .local v3, "file":Ljava/io/File;
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    if-nez v1, :cond_4

    .line 133
    const/4 v1, 0x1

    .line 135
    :cond_4
    if-eqz v8, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 136
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    const/4 v10, 0x1

    if-ne v1, v10, :cond_5

    .line 138
    const/4 v1, 0x2

    .line 139
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_5
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setAllFilesEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 81
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private startSdCardMonitor()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-direct {v0, p0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;-><init>(Lcom/android/certinstaller/CertFileList;)V

    iput-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->startWatching()V

    .line 160
    return-void
.end method

.method private stopSdCardMonitor()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->stopWatching()V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    .line 49
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->startSdCardMonitor()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 55
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->stopSdCardMonitor()V

    .line 56
    return-void
.end method

.method protected onError(I)V
    .locals 1
    .param p1, "errorId"    # I

    .prologue
    .line 74
    const v0, 0x7f060019

    if-ne p1, v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    .line 77
    :cond_0
    return-void
.end method

.method protected onInstallationDone(Z)V
    .locals 2
    .param p1, "fileDeleted"    # Z

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFile;->isSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertFileList;->setAllFilesEnabled(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const v0, 0x7f06001c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "CertFileList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impossible to pick a directory! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertFileList;->setAllFilesEnabled(Z)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->installFromFile(Ljava/io/File;)V

    goto :goto_0
.end method
