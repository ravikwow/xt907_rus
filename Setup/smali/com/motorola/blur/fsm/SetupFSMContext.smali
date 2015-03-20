.class public Lcom/motorola/blur/fsm/SetupFSMContext;
.super Lstatemap/FSMContext;
.source "SetupFSMContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/fsm/SetupFSMContext$1;,
        Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;,
        Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;,
        Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CreateBackgroundBlurAccountMap_Ready;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CreateBackgroundBlurAccountMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CreateBackgroundBlurAccountMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;,
        Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$TosMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Default;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;,
        Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    }
.end annotation


# static fields
.field private static transient _States:[Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;


# instance fields
.field private transient _owner:Lcom/motorola/blur/fsm/SetupFSM;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 214
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Startup:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->StartHome:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->SimActivation:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->BackupAssistantIntro:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->BackupAssistant:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->HuxEmail:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->DataSettings:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CreateBackgroundBlurAccountMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CreateBackgroundBlurAccountMap_Ready;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->MultipleGoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->GoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->CreateBackgroundBlueAccount:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->QaSilent:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext;->_States:[Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;)V
    .locals 1
    .param p1, "owner"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Startup:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;

    invoke-direct {p0, v0}, Lstatemap/FSMContext;-><init>(Lstatemap/State;)V

    .line 33
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSMContext;->_owner:Lcom/motorola/blur/fsm/SetupFSM;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;)V
    .locals 0
    .param p1, "owner"    # Lcom/motorola/blur/fsm/SetupFSM;
    .param p2, "initState"    # Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lstatemap/FSMContext;-><init>(Lstatemap/State;)V

    .line 40
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSMContext;->_owner:Lcom/motorola/blur/fsm/SetupFSM;

    .line 41
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "istream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 187
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 204
    :cond_0
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSMContext;->_States:[Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 206
    return-void

    .line 195
    :cond_1
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 200
    iget-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    sget-object v3, Lcom/motorola/blur/fsm/SetupFSMContext;->_States:[Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "ostream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 167
    .local v1, "size":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 171
    iget-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    invoke-virtual {v2}, Lstatemap/State;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v2, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    .line 175
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v2}, Lstatemap/State;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 177
    return-void
.end method


# virtual methods
.method public Done()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "Done"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Done(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public OK()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "OK"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OK(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 67
    const-string v0, "OnActivityResult"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnActivityResult(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public OnBack(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    const-string v0, "OnBack"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnBack(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public OnFinish(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    const-string v0, "OnFinish"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnFinish(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public OnNext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    const-string v0, "OnNext"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnNext(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public OnNext(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I

    .prologue
    .line 99
    const-string v0, "OnNext"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnNext(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;I)V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public OnStartActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    const-string v0, "OnStartActivity"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->OnStartActivity(Lcom/motorola/blur/fsm/SetupFSMContext;Landroid/app/Activity;)V

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public Start()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "Start"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Start(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public enterStartState()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;->Entry(Lcom/motorola/blur/fsm/SetupFSMContext;)V

    .line 46
    return-void
.end method

.method protected getOwner()Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSMContext;->_owner:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method public getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstatemap/StateUndefinedException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lstatemap/StateUndefinedException;

    invoke-direct {v0}, Lstatemap/StateUndefinedException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    check-cast v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    return-object v0
.end method

.method public setOwner(Lcom/motorola/blur/fsm/SetupFSM;)V
    .locals 2
    .param p1, "owner"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null owner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSMContext;->_owner:Lcom/motorola/blur/fsm/SetupFSM;

    .line 157
    return-void
.end method

.method public valueOf(I)Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    .locals 1
    .param p1, "stateId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSMContext;->_States:[Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    aget-object v0, v0, p1

    return-object v0
.end method
