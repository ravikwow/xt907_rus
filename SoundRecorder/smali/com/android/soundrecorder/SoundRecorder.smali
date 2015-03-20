.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/Recorder$OnStateChangedListener;


# static fields
.field static bSSRSupported:Z

.field static mOldCallState:I


# instance fields
.field mAcceptButton:Landroid/widget/Button;

.field mAudioSourceType:I

.field mDiscardButton:Landroid/widget/Button;

.field mErrorUiMessage:Ljava/lang/String;

.field mExitButtons:Landroid/widget/LinearLayout;

.field final mHandler:Landroid/os/Handler;

.field mMaxFileSize:J

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlayButton:Landroid/widget/ImageButton;

.field mRecordButton:Landroid/widget/ImageButton;

.field mRecorder:Lcom/android/soundrecorder/Recorder;

.field mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field mRequestedType:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field mSampleInterrupted:Z

.field mStateLED:Landroid/widget/ImageView;

.field mStateMessage1:Landroid/widget/TextView;

.field mStateMessage2:Landroid/widget/TextView;

.field mStateProgressBar:Landroid/widget/ProgressBar;

.field mStopButton:Landroid/widget/ImageButton;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimerFormat:Ljava/lang/String;

.field mTimerView:Landroid/widget/TextView;

.field mUpdateTimer:Ljava/lang/Runnable;

.field mVUMeter:Lcom/android/soundrecorder/VUMeter;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    sput v0, Lcom/android/soundrecorder/SoundRecorder;->mOldCallState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    .line 227
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 231
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    .line 240
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    .line 258
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/soundrecorder/SoundRecorder;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/soundrecorder/SoundRecorder;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/16 v12, 0x3e8

    .line 830
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 831
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 833
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 834
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 835
    new-instance v8, Ljava/text/SimpleDateFormat;

    const v9, 0x7f040011

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v8, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 838
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v12

    .line 842
    const-string v10, "is_music"

    const-string v11, "0"

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v10, "title"

    invoke-virtual {v1, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v7, "date_added"

    div-long/2addr v3, v12

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v3, "date_modified"

    div-long v4, v5, v12

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v3, "duration"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 849
    const-string v3, "mime_type"

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v3, "artist"

    const v4, 0x7f040012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v3, "album"

    const v4, 0x7f040013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v3, "SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting audio record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 856
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 857
    const-string v5, "SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContentURI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 859
    if-nez v1, :cond_0

    .line 860
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 877
    :goto_0
    return-object v0

    .line 868
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 869
    invoke-direct {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 871
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 872
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v2

    int-to-long v4, v2

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/android/soundrecorder/SoundRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v1

    .line 877
    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "audioId"    # I
    .param p3, "playlistId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 771
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 774
    .local v2, "cols":[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 775
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 776
    .local v7, "cur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 777
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 778
    .local v6, "base":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 779
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 780
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 783
    return-void
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 812
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "name"

    const v3, 0x7f040014

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 815
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 816
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f040000

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040018

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 823
    :cond_0
    return-object v1
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 285
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 789
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 790
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 791
    .local v2, "ids":[Ljava/lang/String;
    const-string v8, "name=?"

    .line 792
    .local v8, "where":Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f040014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 793
    .local v4, "args":[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 794
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 795
    const-string v0, "SoundRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    const/4 v7, -0x1

    .line 798
    .local v7, "id":I
    if-eqz v6, :cond_1

    .line 799
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 800
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 804
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 805
    return v7
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 393
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 394
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 395
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 397
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    .line 398
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    .line 401
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    .line 405
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    .line 406
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/VUMeter;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    .line 408
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/VUMeter;->setRecorder(Lcom/android/soundrecorder/Recorder;)V

    .line 417
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 756
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 757
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 762
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 760
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 761
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 762
    goto :goto_0
.end method

.method private registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 749
    .end local v0    # "iFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private saveSample()V
    .locals 4

    .prologue
    .line 699
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v2

    if-nez v2, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/4 v1, 0x0

    .line 703
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 707
    if-eqz v1, :cond_0

    .line 710
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method private stopAudioPlayback()V
    .locals 3

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    return-void
.end method

.method private updateTimeRemaining()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 910
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v1

    .line 912
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 913
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 915
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v0

    .line 916
    packed-switch v0, :pswitch_data_0

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 930
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 943
    :goto_1
    return-void

    .line 918
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 922
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 935
    const-string v0, ""

    .line 937
    cmp-long v4, v1, v8

    if-gez v4, :cond_2

    .line 938
    const v0, 0x7f04000a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 942
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 939
    :cond_2
    const-wide/16 v4, 0x21c

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 940
    const v0, 0x7f040009

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    div-long/2addr v1, v8

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimerView()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3c

    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    .line 885
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 886
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v2

    .line 888
    .local v2, "state":I
    if-eq v2, v7, :cond_0

    if-ne v2, v12, :cond_3

    :cond_0
    move v0, v7

    .line 890
    .local v0, "ongoing":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v8

    int-to-long v3, v8

    .line 891
    .local v3, "time":J
    :goto_1
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/Object;

    div-long v10, v3, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    rem-long v10, v3, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, "timeStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    if-ne v2, v12, :cond_5

    .line 895
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v7, 0x64

    mul-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v9}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v9

    int-to-long v9, v9

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 900
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 901
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    :cond_2
    return-void

    .end local v0    # "ongoing":Z
    .end local v3    # "time":J
    .end local v5    # "timeStr":Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 888
    goto :goto_0

    .line 890
    .restart local v0    # "ongoing":Z
    :cond_4
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v8

    int-to-long v3, v8

    goto :goto_1

    .line 896
    .restart local v3    # "time":J
    .restart local v5    # "timeStr":Ljava/lang/String;
    :cond_5
    if-ne v2, v7, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimeRemaining()V

    goto :goto_2
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const v6, 0x7f040001

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 949
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1055
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    .line 1056
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1057
    return-void

    .line 953
    :pswitch_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v1

    if-nez v1, :cond_3

    .line 954
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 955
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 956
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 957
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 958
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 960
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 962
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 966
    sget-boolean v1, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    if-ne v5, v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v2, 0x7f040010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    :goto_1
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 974
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 976
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    :goto_2
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    if-eqz v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v2, 0x7f040005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v2, 0x7f04000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 978
    :cond_3
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 979
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 980
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 981
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 982
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 983
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 985
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 994
    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1011
    :pswitch_1
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1012
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1013
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1014
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1015
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1016
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1018
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1021
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1029
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1034
    :pswitch_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1035
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1036
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1037
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1038
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1039
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1041
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1050
    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 560
    const-string v4, "SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent with key event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 563
    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    if-eq v4, v10, :cond_0

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    if-ne v4, v7, :cond_1

    .line 566
    :cond_0
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    .line 567
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 568
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 569
    .local v1, "message":Ljava/lang/String;
    const v3, 0x7f04001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 576
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 675
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return v3

    .line 580
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 583
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 584
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    const-string v5, "audio/aac_mp4"

    if-ne v4, v5, :cond_5

    .line 586
    :cond_3
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    .line 587
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 588
    .restart local v2    # "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 589
    .restart local v1    # "message":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 590
    const v3, 0x7f040019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 594
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 600
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 592
    :cond_4
    const v3, 0x7f04001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 604
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 675
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 607
    :pswitch_0
    const-string v4, "SoundRecorder"

    const-string v5, "Selected MIC Source: Key Event7"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    goto :goto_0

    .line 614
    :pswitch_1
    const-string v4, "SoundRecorder"

    const-string v5, "Selected Voice Rx only Source: Key Event8"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    goto/16 :goto_0

    .line 621
    :pswitch_2
    const-string v4, "SoundRecorder"

    const-string v5, "Selected Voice Tx+Rx Source: Key Event9"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iput v10, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    goto/16 :goto_0

    .line 628
    :pswitch_3
    const-string v4, "SoundRecorder"

    const-string v5, "Selected AUDIO_AMR Codec: Key Event10"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v4, "audio/amr"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 635
    :pswitch_4
    const-string v4, "SoundRecorder"

    const-string v5, "Selected Voice AUDIO_EVRC Codec: Key Event11"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v4, "audio/evrc"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 642
    :pswitch_5
    const-string v4, "SoundRecorder"

    const-string v5, "Selected AUDIO_QCELP Codec: Key Event12"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v4, "audio/qcelp"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 648
    :pswitch_6
    const-string v4, "SoundRecorder"

    const-string v5, "Selected AUDIO_AAC_MP4 Codec: Key Event13"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v4, "audio/aac_mp4"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 654
    :pswitch_7
    sget-boolean v4, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    if-ne v3, v4, :cond_6

    .line 655
    const-string v4, "SoundRecorder"

    const-string v5, "Selected multichannel AAC Codec: Key Event14"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v4, "audio/aac_5point1_channel"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 663
    :pswitch_8
    sget-boolean v4, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    if-ne v3, v4, :cond_6

    .line 664
    const-string v4, "SoundRecorder"

    const-string v5, "Selected linear pcm Codec: Key Event14"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v4, "audio/wave_6ch_lpcm"

    iput-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "button"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x6

    const/4 v1, 0x3

    const/16 v3, 0x170c

    const/4 v5, 0x1

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 511
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 442
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iput-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 444
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->diskSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    iput-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 448
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_0

    .line 451
    :cond_3
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAudioPlayback()V

    .line 453
    const-string v0, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 455
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v2, ".amr"

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    .line 492
    :goto_1
    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    goto/16 :goto_0

    .line 456
    :cond_4
    const-string v0, "audio/evrc"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 458
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v2, ".qcp"

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    move v1, v7

    move-object v3, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto :goto_1

    .line 459
    :cond_5
    const-string v0, "audio/qcelp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 461
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v2, ".qcp"

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    const/4 v5, 0x7

    move v1, v7

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto :goto_1

    .line 462
    :cond_6
    const-string v0, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 463
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 464
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v6, ".3gpp"

    iget v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    move-object v7, p0

    move v9, v5

    invoke-virtual/range {v4 .. v9}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto :goto_1

    .line 465
    :cond_7
    const-string v0, "audio/aac_mp4"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 466
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 467
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v6, ".3gpp"

    iget v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    move-object v7, p0

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 468
    :cond_8
    const-string v0, "audio/aac_5point1_channel"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 469
    sget-boolean v0, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    if-ne v5, v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 471
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0, v6}, Lcom/android/soundrecorder/Recorder;->setChannels(I)V

    .line 472
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const v2, 0xbb80

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/Recorder;->setSamplingRate(I)V

    .line 473
    iput v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    .line 474
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v6, ".3gpp"

    iget v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    move-object v7, p0

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 476
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output file type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_a
    const-string v0, "audio/wave_6ch_lpcm"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 479
    sget-boolean v0, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    if-ne v5, v0, :cond_b

    .line 480
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 481
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0, v6}, Lcom/android/soundrecorder/Recorder;->setChannels(I)V

    .line 482
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/Recorder;->setSamplingRate(I)V

    .line 483
    iput v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    .line 484
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const/16 v1, 0xb

    const-string v2, ".wav"

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    const/16 v5, 0x8

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 486
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output file type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output file type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->startPlayback()V

    goto/16 :goto_0

    .line 502
    :pswitch_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    goto/16 :goto_0

    .line 505
    :pswitch_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 506
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 507
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x7f060008
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 368
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 369
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icycle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 292
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 293
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "s":Ljava/lang/String;
    const-string v8, "audio/amr"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "audio/3gpp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "audio/*"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "*/*"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 296
    :cond_0
    iput-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 304
    :cond_1
    const-string v0, "android.provider.MediaStore.extra.MAX_BYTES"

    .line 306
    .local v0, "EXTRA_MAX_BYTES":Ljava/lang/String;
    const-string v8, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v2, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 309
    .end local v0    # "EXTRA_MAX_BYTES":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    const-string v8, "audio/*"

    iget-object v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "*/*"

    iget-object v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 310
    :cond_3
    const-string v8, "audio/3gpp"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 313
    :cond_4
    const-string v8, "audio/amr"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 315
    const-string v8, "ro.media.enc.aud.fileformat"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "propVal":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 317
    const-string v8, "qcp"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 318
    const-string v8, "audio/qcelp"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 324
    :cond_5
    :goto_0
    const/high16 v8, 0x7f030000

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 326
    new-instance v8, Lcom/android/soundrecorder/Recorder;

    invoke-direct {v8}, Lcom/android/soundrecorder/Recorder;-><init>()V

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 327
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8, p0}, Lcom/android/soundrecorder/Recorder;->setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V

    .line 328
    new-instance v8, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-direct {v8}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>()V

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 330
    const-string v8, "power"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 332
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v8, 0x6

    const-string v9, "SoundRecorder"

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 337
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setResult(I)V

    .line 338
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V

    .line 339
    if-eqz p1, :cond_6

    .line 340
    const-string v8, "recorder_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 341
    .local v5, "recorderState":Landroid/os/Bundle;
    if-eqz v5, :cond_6

    .line 342
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8, v5}, Lcom/android/soundrecorder/Recorder;->restoreState(Landroid/os/Bundle;)V

    .line 343
    const-string v8, "sample_interrupted"

    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 344
    const-string v8, "max_file_size"

    invoke-virtual {v5, v8, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 347
    .end local v5    # "recorderState":Landroid/os/Bundle;
    :cond_6
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 348
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v8

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 350
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 351
    .local v1, "audioManager":Landroid/media/AudioManager;
    const-string v8, "ssr"

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "ssrRet":Ljava/lang/String;
    const-string v8, "=true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 353
    const-string v8, "SoundRecorder"

    const-string v9, "Surround sound recording is supported"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    .line 360
    :goto_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 361
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v4    # "propVal":Ljava/lang/String;
    .end local v7    # "ssrRet":Ljava/lang/String;
    :goto_2
    return-void

    .line 297
    .restart local v6    # "s":Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_1

    .line 299
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setResult(I)V

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 319
    .end local v6    # "s":Ljava/lang/String;
    .restart local v4    # "propVal":Ljava/lang/String;
    :cond_8
    const-string v8, "amr"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 320
    const-string v8, "audio/amr"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 356
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    .restart local v3    # "pm":Landroid/os/PowerManager;
    .restart local v7    # "ssrRet":Ljava/lang/String;
    :cond_9
    const-string v8, "SoundRecorder"

    const-string v9, "Surround sound recording is not supported"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sput-boolean v10, Lcom/android/soundrecorder/SoundRecorder;->bSSRSupported:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 722
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 723
    return-void
.end method

.method public onError(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1082
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1086
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    move v2, v3

    .line 1102
    :goto_0
    if-eqz v1, :cond_1

    .line 1103
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x7f040000

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v5, 0x7f04000d

    if-ne v4, v2, :cond_0

    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$4;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$4;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    :cond_0
    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1114
    :cond_1
    return-void

    .line 1088
    :pswitch_0
    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 1089
    goto :goto_0

    .line 1094
    :pswitch_1
    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 1096
    goto :goto_0

    .line 1098
    :pswitch_2
    const v2, 0x7f040017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 1099
    goto :goto_0

    .line 1086
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 536
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    const/4 v0, 0x1

    .line 553
    :goto_1
    return v0

    .line 539
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 545
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    goto :goto_0

    .line 548
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->clear()V

    goto :goto_0

    .line 553
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 522
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 523
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 524
    .local v0, "inputMgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 525
    const/4 v1, 0x1

    .line 527
    .end local v0    # "inputMgr":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 688
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 689
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 691
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 692
    return-void

    :cond_0
    move v0, v1

    .line 688
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, "recorderState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->saveState(Landroid/os/Bundle;)V

    .line 382
    const-string v1, "sample_interrupted"

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-string v1, "max_file_size"

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 385
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 1063
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 1064
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1068
    :cond_1
    if-ne p1, v1, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1075
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 1076
    return-void

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 681
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 682
    return-void
.end method
