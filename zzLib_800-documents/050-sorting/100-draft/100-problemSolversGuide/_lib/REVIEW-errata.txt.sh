_ _page ' ' ###
_ _o date --iso-8601
_o_ _safeEcho_newline "$fromDocuments_boilerplateDisclaimer"
_t ' '
source "$zzLib_800_documents_____boilerplate_____disclaimer_inaccessibleReferences"
_t ' '
_o_ _safeEcho_newline "$fromDocuments_boilerplateDisclaimer_extensiveResearchNotes"
_heading2 'errata'

_heading3 'Tentative Terminology, State Space Search, Cross-Referencing,
Articles with Links vs Textbook'
_t 'Events are detected as phenomenon. Phenomenon are modeled. Models are developed in fields of research (electronics, optics, etc). Fields are researched through science and engineering. Science is the systematic study of phenomenon. Engineering is the assembly of known phenomenon for utility. Technology is the development of tools by engineering. Tools are an extension of the body. Tools are used to detect more phenomenon for science, or directly assemble more phenomenon for engineering.

State space search lets us determine which search terms to use, which articles to cross-reference, which books to read, or what experiments to perform. Each option is critically evaluated for the expected consumption of effort, for a given return in production, as well as opportunities for further investigation. An article rich with links for cross-referencing to related fields would be more prized than a textbook.'



_heading3 'When State Space Search Fails, Reduce'
_t 'Reduction to another problem is warranted when a state space search on the current situation does not yield reasonably efficient or adaptable solutions. Remember, success is maximum production at least effort. Any decision leading to less than that optimum can only achieve imaginary success. If a hypothesis cannot reasonably be expected to lead to production, it must be reduced upwards to a more solvable problem - new projects entirely.  For example, speeding up an assembly line may encounter a physical limit - glass breaks upon high-speed impact. Recognizing the goal is increasedproduction at decreased effort, this problem may be revised upward toward simply installing another assembly line. A logical limit may then be encountered - two streams of assembled products must be handled, perhaps halving performance of a downstream operation. Going further, whether the assembled product could be revised for easier production - perhaps omitting glass - must be considered. Ultimately, whether the assembled product is valuable at all may need to be considered - perhaps a pipeline would be better than glass bottles. In the end, the original problem may not be worth solving.'



_heading3 'Commoditizing and Existing Product'
_t 'For example, if modeling a metal plate results in an expensive part, it may be more efficient to design the plate as a circuit board.'



_heading3 'Why Complicated Mathematics for a Predominantly Simple Universe'
_t 'Modeling in terms of electrons and photons does not usually happen because these are small particles moving very fast. Computing such a model would be prohibitive.'


_heading3 'CAD Modeling - Sketch, Extrude, Assemble'
_t 'Modern hardware geometry design, when practical and not dedicated to purely artistic or electronic circuit purposes, usually follows either a graphical process from a 2D sketch, or a programmatic approach.

Following the graphical approach, from a 2D sketch, is exemplified by FreeCAD with the A2Plus module. Lines, circles, and related shapes are drawn, constrained by length and angle, then this 2D profile is usually extruded to a 3D shape. Additional sketches may remove material from that 3D shape. Such &#39;parts&#39; are then assembled by joining faces of 3D parts into an &#39;assembly&#39;. Multiple assemblies may be combined.

As an example, to build a table, the 2inch*4inch rectangle of a 2x4 timber could be sketched, then extruded to a few feet in length, then that single timber would be assembled together at places where a table would be formed. Realistically, a real table would need some fasteners to hold those timbers together, but in CAD such details are often not modeled (and too much detailing can cause any CAD program to become slow).'


_heading3 'Bill of Materials (aka. BOM)'
_t 'Modern hardware projects may have thousands of parts. Keeping track of these by manually counting how many of each part seem present in a model is time consuming and error prone, especially if &#39;assemblies&#39; in a CAD model have been assembled into more complex assemblies (nesting many assemblies). Instead, using a hierarchical program, which can assemble BOM files, is much more efficient.

Modern CAD software often includes some BOM capability built within, however, this may unnecessarily limit the project to using only that CAD program, and may miss details which are not easily modeled completely (eg. fasteners). Instead, using a separate program, with separate BOM files, is better for design software portability.

&#39;BOM designer&#39; exists for such, taking simple text files as input, combining totals hierarchically with &#39;KWrite&#39; syntax highlighting compatibility.'








