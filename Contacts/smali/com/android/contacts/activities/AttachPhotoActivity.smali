.class public Lcom/android/contacts/activities/AttachPhotoActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AttachPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/AttachPhotoActivity$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCroppedPhotoUri:Landroid/net/Uri;

.field private mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/AttachPhotoActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveContact(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    .prologue
    .line 185
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 186
    .local v0, "loader":Lcom/android/contacts/model/ContactLoader;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/activities/AttachPhotoActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$2;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 199
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 200
    return-void
.end method

.method private saveContact(Lcom/android/contacts/model/Contact;)V
    .locals 22
    .param p1, "contact"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v3

    .line 217
    .local v3, "deltaList":Lcom/android/contacts/model/RawContactDeltaList;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/RawContactDeltaList;->getFirstPhotoWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v17

    .line 219
    .local v17, "raw":Lcom/android/contacts/model/RawContactDelta;
    if-nez v17, :cond_0

    .line 220
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "no writable raw-contact found"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b020b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 224
    .local v20, "t":Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    .line 272
    .end local v20    # "t":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v19

    .line 234
    .local v19, "size":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 240
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 241
    .local v18, "scaled":Landroid/graphics/Bitmap;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 242
    .local v14, "compressed":[B
    if-nez v14, :cond_1

    .line 243
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "could not create scaled and compressed Bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "compressed":[B
    .end local v18    # "scaled":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 236
    .local v15, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "Could not find bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "compressed":[B
    .restart local v18    # "scaled":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v12

    .line 251
    .local v12, "account":Lcom/android/contacts/model/account/AccountType;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v21

    .line 253
    .local v21, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    if-nez v21, :cond_2

    .line 254
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "cannot attach photo to this account type"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setPhoto([B)V

    .line 260
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "all prerequisites met, about to save photo to contact"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v16

    .line 270
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 126
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    .line 127
    if-eq p2, v8, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "myIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "inputUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/android/contacts/activities/AttachPhotoActivity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v3

    .line 142
    .local v3, "perm":I
    if-ne v3, v8, :cond_3

    .line 146
    iget-object v5, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    .line 147
    iget-object v4, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 152
    .local v4, "toCrop":Landroid/net/Uri;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "mimeType"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 154
    const-string v5, "mimeType"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-static {v1, v5}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 157
    sget v5, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I

    invoke-static {v1, v5}, Lcom/android/contacts/util/ContactPhotoUtils;->addCropExtras(Landroid/content/Intent;I)V

    .line 159
    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    goto :goto_0

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "toCrop":Landroid/net/Uri;
    :cond_3
    move-object v4, v0

    .restart local v4    # "toCrop":Landroid/net/Uri;
    goto :goto_1

    .line 163
    .end local v0    # "inputUri":Landroid/net/Uri;
    .end local v2    # "myIntent":Landroid/content/Intent;
    .end local v3    # "perm":I
    .end local v4    # "toCrop":Landroid/net/Uri;
    :cond_4
    if-ne p1, v9, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    if-eq p2, v8, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    new-instance v6, Lcom/android/contacts/activities/AttachPhotoActivity$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/AttachPhotoActivity$1;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V

    invoke-direct {p0, v5, v6}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_1

    .line 85
    const-string v0, "contact_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "uri":Ljava/lang/String;
    if-nez v8, :cond_0

    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    .line 87
    const-string v0, "temp_photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 88
    const-string v0, "cropped_photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 97
    .end local v8    # "uri":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    return-void

    .line 86
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 90
    .end local v8    # "uri":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 91
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 92
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/contact"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 106
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "contact_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "temp_photo_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "cropped_photo_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_2
    return-void
.end method
